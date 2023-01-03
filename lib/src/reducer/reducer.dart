import 'package:flutter/foundation.dart';
import 'package:medchain/src/actions/index.dart';
import 'package:medchain/src/models/index.dart';
import 'package:medchain/src/reducer/firestore_reducer.dart';
import 'package:medchain/src/reducer/location_reducer.dart';
import 'package:medchain/src/reducer/login_reducer.dart';
import 'package:redux/redux.dart';

Reducer<AppState> reducer = combineReducers(<Reducer<AppState>>[
  (AppState state, dynamic action) {
    if (kDebugMode) {
      print(action);
    }
    return state;
  },
  _reducer,
  TypedReducer<AppState, LogoutSuccessful>(_logoutSuccessful),
  TypedReducer<AppState, GetBasketSuccessful>(_getBasketSuccessful),
  TypedReducer<AppState, SetBasketSuccessful>(_setBasketSuccessful),
  TypedReducer<AppState, AddItemToBasketStart>(_addItemToBasketStart),
  TypedReducer<AppState, ModifyAmountStart>(_modifyAmountStart),
  TypedReducer<AppState, RemoveItemFromBasketStart>(_removeItemFromBasketStart),
  TypedReducer<AppState, PayStart>(_payStart),
]);

AppState _reducer(AppState state, dynamic action) {
  return state.copyWith(
    auth: authReducer(state.auth, action),
    search: searchReducer(state.search, action),
    locationState: locationReducer(state.locationState, action),
  );
}

AppState _logoutSuccessful(AppState state, LogoutSuccessful action) {
  return const AppState(search: SearchState(), auth: AuthState(), locationState: LocationState(), basket: Basket());
}

AppState _getBasketSuccessful(AppState state, GetBasketSuccessful action) {
  return state.copyWith(basket: action.basket);
}

AppState _setBasketSuccessful(AppState state, SetBasketSuccessful action) {
  return state;
}

AppState _addItemToBasketStart(AppState state, AddItemToBasketStart action) {
  final List<BasketProduct> itemsInBasket =
      state.basket.basketProducts.where((BasketProduct element) => element.product == action.item).toList();
  if (itemsInBasket.isNotEmpty) {
    final List<BasketProduct> lst = <BasketProduct>[...state.basket.basketProducts]..remove(itemsInBasket.first);
    final BasketProduct updatedProduct =
        BasketProduct(product: action.item, amount: itemsInBasket.first.amount + action.amount);
    lst.add(updatedProduct);
    final double newPrice = state.basket.totalPrice + action.item.price! * action.amount;
    return state.copyWith(basket: Basket(basketProducts: lst, totalPrice: newPrice));
  }
  final List<BasketProduct> lst = <BasketProduct>[...state.basket.basketProducts];
  final BasketProduct newProduct = BasketProduct(product: action.item, amount: action.amount);
  lst.add(newProduct);
  final double newPrice = state.basket.totalPrice + action.item.price! * action.amount;
  return state.copyWith(basket: Basket(basketProducts: lst, totalPrice: newPrice));
}

AppState _modifyAmountStart(AppState state, ModifyAmountStart action) {
  final List<BasketProduct> copy = List<BasketProduct>.of(state.basket.basketProducts);
  copy[copy.indexOf(action.item)] =
      BasketProduct(product: action.item.product, amount: action.item.amount + action.modifier);
  final double newPrice = state.basket.totalPrice + action.modifier * action.item.product.price!;
  return state.copyWith(basket: Basket(basketProducts: copy, totalPrice: newPrice));
}

AppState _removeItemFromBasketStart(AppState state, RemoveItemFromBasketStart action) {
  return state.copyWith(
    basket: Basket(
      basketProducts: <BasketProduct>[
        ...state.basket.basketProducts.getRange(0, state.basket.basketProducts.indexOf(action.item)),
        ...state.basket.basketProducts
            .getRange(state.basket.basketProducts.indexOf(action.item) + 1, state.basket.basketProducts.length),
      ],
      totalPrice: state.basket.totalPrice - action.item.product.price! * action.item.amount,
    ),
  );
}

AppState _payStart(AppState state, PayStart action) {
  return state;
}
