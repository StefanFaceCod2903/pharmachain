import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:medchain/src/actions/index.dart';
import 'package:medchain/src/models/index.dart';
import 'package:medchain/src/presentation/components/product_component.dart';
import 'package:redux/redux.dart';

double calculateDistance(double lat1, double lon1, double lat2, double lon2) {
  const double p = 0.017453292519943295;
  final double a = 0.5 - cos((lat2 - lat1) * p) / 2 + cos(lat1 * p) * cos(lat2 * p) * (1 - cos((lon2 - lon1) * p)) / 2;
  final num mod = pow(10.0, 1);
  final double value = 12742 * asin(sqrt(a));
  return (value * mod).round().toDouble() / mod;
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _controller = TextEditingController();
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  void initState() {
    final Store<AppState> store = StoreProvider.of<AppState>(context, listen: false);
    store
      ..dispatch(const GetLocation())
      ..dispatch(GetBasket(store.state.auth.user!.uid));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Store<AppState> store = StoreProvider.of<AppState>(context);
    return Scaffold(
      key: _key,
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            const ListTile(
              title: Text('MedChain'),
            ),
            ListTile(
              title: const Text('Logout'),
              leading: const Icon(Icons.logout),
              onTap: () {
                store.dispatch(const Logout());
              },
            ),
            ListTile(
              title: const Text('Coşul meu'),
              leading: const Icon(Icons.shopping_basket_rounded),
              onTap: () {
                Navigator.pushNamed(context, '/basket_page');
              },
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 42, left: 24, right: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextField(
              cursorColor: const Color(0xFF39C7A6),
              controller: _controller,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(8),
                ),
                prefixIcon: IconButton(
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    _key.currentState!.openDrawer();
                  },
                ),
                suffixIcon: const Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                hintText: 'Cauta un produs',
              ),
              onSubmitted: (String str) {
                setState(() {
                  store.dispatch(GetProducts(name: str));
                });
              },
            ),
            if (store.state.search.isLoading)
              const Center(
                child: CircularProgressIndicator(
                  color: Colors.black,
                ),
              )
            else
              store.state.search.products.isEmpty && _controller.text.isNotEmpty
                  ? const Padding(
                      padding: EdgeInsets.only(top: 150),
                      child: Center(
                        child: Text(
                          'Nu am gasit acest produs.',
                          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  : Expanded(
                      child: ListView.separated(
                        itemCount: store.state.search.products.length,
                        itemBuilder: (BuildContext context, int index) {
                          return ProductComponent(product: store.state.search.products[index]);
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return const SizedBox(height: 12);
                        },
                      ),
                    )
          ],
        ),
      ),
    );
  }
}
