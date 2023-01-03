import 'package:medchain/src/actions/index.dart';
import 'package:medchain/src/api/pay_api.dart';
import 'package:medchain/src/models/index.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

class PayEpics {
  PayEpics(this._api);
  final PayApi _api;

  Epic<AppState> get epic {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, PayStart>(_payStart),
    ]);
  }

  Stream<dynamic> _payStart(Stream<PayStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((PayStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => _api.pay())
          .map((_) => const Pay.successful())
          .onErrorReturnWith((Object error, StackTrace stackTrace) => Pay.error(error, stackTrace));
    });
  }
}
