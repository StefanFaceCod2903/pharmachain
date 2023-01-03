import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:medchain/src/models/index.dart';
import 'package:redux/redux.dart';

class BasketContainer extends StatelessWidget {
  const BasketContainer({super.key, required this.builder});

  final ViewModelBuilder<Basket> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, Basket>(
      converter: (Store<AppState> store) {
        return store.state.basket;
      },
      builder: builder,
    );
  }
}
