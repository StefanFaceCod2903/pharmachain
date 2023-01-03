import 'dart:math';

import 'package:flutter/material.dart';
import 'package:medchain/src/models/index.dart';
import 'package:medchain/src/presentation/containers/location_container.dart';

double calculateDistance(double lat1, double lon1, double lat2, double lon2) {
  const double p = 0.017453292519943295;
  final double a = 0.5 - cos((lat2 - lat1) * p) / 2 + cos(lat1 * p) * cos(lat2 * p) * (1 - cos((lon2 - lon1) * p)) / 2;
  final num mod = pow(10.0, 1);
  final double value = 12742 * asin(sqrt(a));
  return (value * mod).round().toDouble() / mod;
}

class ProductComponent extends StatelessWidget {
  const ProductComponent({super.key, required this.product});
  final Product product;

  @override
  Widget build(BuildContext context) {
    return LocationContainer(
      builder: (BuildContext context, LocationModel? location) {
        return GestureDetector(
          onTap: () {
            Navigator.pushNamed(
              context,
              '/product_page',
              arguments: product,
            );
          },
          child: Container(
            height: 106,
            color: Colors.white,
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(4),
                  child: Image.network(
                    'https://www.prolex.ro/wp-content/uploads/2019/02/catena-logo.png',
                    height: 60,
                    width: 60,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8, top: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        product.drug!,
                        style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            '${product.price} RON',
                            style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 14, color: Color(0xFF14AD6D)),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8),
                            child: Icon(Icons.circle, size: 6),
                          ),
                          const Icon(Icons.location_on_outlined, size: 13),
                          const SizedBox(width: 10),
                          if (location != null)
                            Text(
                              '${calculateDistance(
                                location.lat,
                                location.long,
                                double.parse(product.coordinates!['latitude'].toString()),
                                double.parse(product.coordinates!['longitude'].toString()),
                              )} km',
                              style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 14, color: Colors.black),
                            ),
                        ],
                      ),
                      SizedBox(
                        width: 200,
                        child: Text(
                          product.pharmacy!,
                          maxLines: 2,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
