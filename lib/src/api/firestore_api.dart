import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:medchain/src/models/index.dart';
import 'package:medchain/src/secrets.dart';

class FirestoreApi {
  FirestoreApi(this.firestore);
  final FirebaseFirestore firestore;

  Future<List<Product>> getProductsByName(String name) async {
    const String apiKey = mapsApiKey;
    final Dio dio = Dio();
    final List<Product> products = <Product>[];
    final String capitalizeName = '${name[0].toUpperCase()}${name.substring(1).toLowerCase()}';
    final QuerySnapshot<Object?> querySnapshot =
        await firestore.collection('products').where('drug', isEqualTo: capitalizeName).get();
    for (final QueryDocumentSnapshot<Object?> doc in querySnapshot.docs) {
      final Map<dynamic, dynamic> productJson = doc.data()! as Map<dynamic, dynamic>;
      final String apiUrl =
          "https://maps.googleapis.com/maps/api/geocode/json?latlng=${(productJson["coordinates"] as Map<String, dynamic>)['latitude']},${(productJson["coordinates"] as Map<String, dynamic>)['longitude']}&key=$apiKey";
      final Response<dynamic> response = await dio.get(apiUrl);
      final Map<String, dynamic> data = response.data as Map<String, dynamic>;
      if (data['status'] == 'OK') {
        if ((data['results'] as List<dynamic>).isNotEmpty) {
          final Map<dynamic, dynamic> firstResult = (data['results'] as List<dynamic>)[0] as Map<dynamic, dynamic>;
          productJson['address'] = firstResult['formatted_address'];
        }
      }
      final Product product = Product.fromJson(productJson);
      products.add(product);
    }
    return products;
  }

  Future<Basket> getBasket(String uid) async {
    final QuerySnapshot<Map<String, dynamic>> data = await firestore.collection('baskets').where(uid).get();
    if (data.docs.isNotEmpty) {
      return Basket.fromJson(data.docs.first.data());
    }
    return const Basket();
  }

  Future<void> setBasket(Basket basket, String uid) async {
    final Map<String, dynamic> json = basket.toJson();
    final List<BasketProduct> basketProducts = json['basketProducts'] as List<BasketProduct>;
    final List<dynamic> jsonBasketProducts = <dynamic>[];
    for (final BasketProduct basketProduct in basketProducts) {
      final Map<String, dynamic> jsonBasketProduct = basketProduct.toJson();
      jsonBasketProduct['product'] = (jsonBasketProduct['product'] as Product).toJson();
      jsonBasketProducts.add(jsonBasketProduct);
    }
    json['basketProducts'] = jsonBasketProducts;
    await firestore.collection('baskets').doc(uid).set(json);
  }
}
