import 'package:medchain/src/api/authentification_api.dart';
import 'package:medchain/src/api/firestore_api.dart';
import 'package:medchain/src/api/location_api.dart';
import 'package:medchain/src/api/pay_api.dart';
import 'package:medchain/src/epics/auth_epics.dart';
import 'package:medchain/src/epics/firestore_epics.dart';
import 'package:medchain/src/epics/location_epics.dart';
import 'package:medchain/src/epics/pay_epics.dart';
import 'package:medchain/src/models/index.dart';
import 'package:redux_epics/redux_epics.dart';

class AppEpics {
  AppEpics(this.authApi, this.firestoreApi, this.locationApi, this.payApi);
  final AuthApi authApi;
  final FirestoreApi firestoreApi;
  final LocationApi locationApi;
  final PayApi payApi;

  Epic<AppState> get epic {
    return combineEpics(<Epic<AppState>>[
      AuthEpics(authApi).epic,
      FirestoreEpics(firestoreApi).epic,
      LocationEpics(locationApi).epic,
      PayEpics(payApi).epic,
    ]);
  }
}
