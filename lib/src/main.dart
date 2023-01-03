import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:location/location.dart';
import 'package:medchain/src/actions/index.dart';
import 'package:medchain/src/api/authentification_api.dart';
import 'package:medchain/src/api/firestore_api.dart';
import 'package:medchain/src/api/location_api.dart';
import 'package:medchain/src/api/pay_api.dart';
import 'package:medchain/src/epics/epics.dart';
import 'package:medchain/src/firebase_options.dart';
import 'package:medchain/src/models/index.dart';
import 'package:medchain/src/presentation/basket_page.dart';
import 'package:medchain/src/presentation/create_user.dart';
import 'package:medchain/src/presentation/home.dart';
import 'package:medchain/src/presentation/home_page.dart';
import 'package:medchain/src/presentation/login_page.dart';
import 'package:medchain/src/presentation/product_page.dart';
import 'package:medchain/src/reducer/reducer.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  final PayApi payApi = PayApi();
  final Location location = Location();
  final AuthApi authApi = AuthApi();
  final FirestoreApi firestoreApi = FirestoreApi(firestore);
  final LocationApi locationApi = LocationApi(firestore, location: location);
  final AppEpics epics = AppEpics(authApi, firestoreApi, locationApi, payApi);
  final StreamController<dynamic> controller = StreamController<dynamic>();
  final Store<AppState> store = Store<AppState>(
    reducer,
    initialState: const AppState(),
    middleware: <Middleware<AppState>>[
      EpicMiddleware<AppState>(epics.epic),
      (Store<AppState> store, dynamic action, NextDispatcher next) {
        next(action);
        controller.add(action);
      }
    ],
  )..dispatch(const GetCurrentUser());

  //store.dispatch(GetBasket(store.state.auth.user!.uid));
  controller.stream.where((dynamic action) => action is GetCurrentUserSuccessful);
  runApp(
    MyApp(
      store: store,
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.store});

  final Store<AppState> store;

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        routes: <String, WidgetBuilder>{
          '/login': (BuildContext context) => const LoginPage(),
          '/create_user': (BuildContext context) => const CreateUserPage(),
          '/home_page': (BuildContext context) => const HomePage(),
          '/product_page': (BuildContext context) => const ProductPage(),
          '/basket_page': (BuildContext context) => const BasketPage(),
        },
        home: const Home(),
      ),
    );
  }
}
