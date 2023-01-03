import 'package:medchain/src/actions/index.dart';
import 'package:medchain/src/api/firestore_api.dart';
import 'package:medchain/src/models/index.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/transformers.dart';

class FirestoreEpics {
  FirestoreEpics(this._api);
  final FirestoreApi _api;

  Epic<AppState> get epic {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, GetProductsStart>(_getProductsStart),
      TypedEpic<AppState, GetBasketStart>(_getBasketStart),
      TypedEpic<AppState, SetBasketStart>(_setBasketStart)
    ]);
  }

  Stream<dynamic> _getProductsStart(Stream<GetProductsStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((GetProductsStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => _api.getProductsByName(action.name))
          .map((List<Product> products) => GetProducts.successful(products))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => GetProducts.error(error, stackTrace));
    });
  }

  Stream<dynamic> _getBasketStart(Stream<GetBasketStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((GetBasketStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => _api.getBasket(action.uid))
          .map((Basket basket) => GetBasket.successful(basket))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => GetBasket.error(error, stackTrace));
    });
  }

  Stream<dynamic> _setBasketStart(Stream<SetBasketStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((SetBasketStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => _api.setBasket(action.basket, action.uid))
          .map((_) => const SetBasket.successful())
          .onErrorReturnWith((Object error, StackTrace stackTrace) => SetBasket.error(error, stackTrace));
    });
  }
}
