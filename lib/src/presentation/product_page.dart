import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:medchain/src/actions/index.dart';
import 'package:medchain/src/models/index.dart';
import 'package:medchain/src/presentation/components/map_component.dart';
import 'package:medchain/src/presentation/containers/basket_container.dart';
import 'package:medchain/src/presentation/containers/user_container.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  int nrItems = 0;

  @override
  Widget build(BuildContext context) {
    final Product product = ModalRoute.of(context)!.settings.arguments! as Product;
    return UserContainer(
      builder: (BuildContext context, LoginUser? user) {
        return BasketContainer(
          builder: (BuildContext context, Basket basket) {
            return Scaffold(
              body: Column(
                children: <Widget>[
                  Expanded(
                    child: MapComponent(
                      pos: LatLng(
                        double.parse(product.coordinates!['latitude'].toString()),
                        double.parse(product.coordinates!['longitude'].toString()),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 11),
                            child: Text(
                              product.drug!,
                              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 4),
                            child: Text(
                              '${product.price} RON',
                              style:
                                  const TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Color(0xFF1F9866)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 16),
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                              color: Colors.white,
                              width: 312,
                              height: 100,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  const Text(
                                    'Adresa',
                                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                                  ),
                                  const SizedBox(height: 6),
                                  Text(
                                    product.address!,
                                    style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFF676768),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                            width: 312,
                            height: 75,
                            color: Colors.white,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const <Widget>[
                                Text(
                                  'Program',
                                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                                ),
                                SizedBox(height: 12),
                                Text(
                                  'L-V: 08:00 - 22:00',
                                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFF676768)),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 29),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              GestureDetector(
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(color: const Color(0xFFDFE0E3)),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  //color: Colors.white,
                                  height: 48,
                                  width: 48,
                                  child: const Icon(Icons.remove, color: Color(0xFF31B77F)),
                                ),
                                onTap: () async {
                                  //getPlace(widget.product.pharmacy.position);
                                  setState(() {
                                    if (nrItems > 0) {
                                      nrItems -= 1;
                                    }
                                  });
                                },
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: const Color(0xFFDFE0E3)),
                                  borderRadius: BorderRadius.circular(8),
                                ),

                                //color: Colors.white,
                                height: 48,
                                width: 48,
                                child: Center(
                                  child: Text(
                                    '$nrItems',
                                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(color: const Color(0xFFDFE0E3)),
                                    borderRadius: BorderRadius.circular(8),
                                  ),

                                  //color: Colors.white,
                                  height: 48,
                                  width: 48,
                                  child: const Icon(Icons.add, color: Color(0xFF31B77F)),
                                ),
                                onTap: () {
                                  setState(() {
                                    nrItems += 1;
                                  });
                                },
                              ),
                              GestureDetector(
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF31B77F),
                                    borderRadius: BorderRadius.circular(8),
                                  ),

                                  //color: Colors.white,
                                  height: 48,
                                  width: 139,
                                  child: const Center(
                                    child: Text(
                                      'Adaugă în coş',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                onTap: () {
                                  StoreProvider.of<AppState>(context).dispatch(AddItemToBasket(product, nrItems));
                                  StoreProvider.of<AppState>(context).dispatch(SetBasket(user!.uid, basket));
                                  setState(() {
                                    nrItems = 0;
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
