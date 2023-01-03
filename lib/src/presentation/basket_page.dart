import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:medchain/src/actions/index.dart';
import 'package:medchain/src/models/index.dart';
import 'package:medchain/src/presentation/containers/basket_container.dart';
import 'package:redux/redux.dart';

class BasketPage extends StatefulWidget {
  const BasketPage({super.key});

  @override
  State<BasketPage> createState() => _BasketPageState();
}

class _BasketPageState extends State<BasketPage> {
  Store<AppState>? store;

  @override
  void initState() {
    store = StoreProvider.of<AppState>(context, listen: false);
    super.initState();
  }

  @override
  void dispose() {
    store!.dispatch(SetBasket(store!.state.auth.user!.uid, store!.state.basket));
    super.dispose();
  }

  Future<void> _showDeleteDialog(Store<AppState> store, BasketProduct basketProduct) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Ştergere produs'),
          content: SingleChildScrollView(
            child: ListBody(
              children: const <Widget>[
                Text('Eşti sigur că vrei să stergi acest produs?'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Da'),
              onPressed: () {
                Navigator.of(context).pop();
                setState(() {
                  store.dispatch(RemoveItemFromBasket(basketProduct));
                });
              },
            ),
            TextButton(
              child: const Text('Nu'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final Store<AppState> store = StoreProvider.of<AppState>(context);
    return BasketContainer(
      builder: (BuildContext context, Basket basket) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
                size: 20,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: CustomScrollView(
              slivers: <Widget>[
                const SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 16),
                    child: Text(
                      'Cosul tau',
                      style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
                    ),
                  ),
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    childCount: basket.basketProducts.length,
                    (BuildContext context, int index) {
                      return Card(
                        shadowColor: Colors.transparent,
                        child: Container(
                          padding: const EdgeInsets.only(left: 15),
                          height: 75,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Image.network(
                                    'https://www.prolex.ro/wp-content/uploads/2019/02/catena-logo.png',
                                    height: 40,
                                    width: 40,
                                  ),
                                  const SizedBox(
                                    width: 16,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        '${basket.basketProducts[index].product.drug}',
                                        style: const TextStyle(fontWeight: FontWeight.w500),
                                      ),
                                      const SizedBox(
                                        height: 6,
                                      ),
                                      Text(
                                        '${basket.basketProducts[index].amount} bucăţi',
                                        style: const TextStyle(fontWeight: FontWeight.w700, color: Color(0xFF14AD6D)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Row(
                                children: <Widget>[
                                  IconButton(
                                    onPressed: () {
                                      setState(() {
                                        setState(() {
                                          if (basket.basketProducts[index].amount < 10) {
                                            {
                                              store
                                                ..dispatch(ModifyAmount(basket.basketProducts[index], 1))
                                                ..dispatch(SetBasket(store.state.auth.user!.uid, store.state.basket));
                                            }
                                          }
                                        });
                                      });
                                    },
                                    icon: const Icon(Icons.add),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      setState(() {
                                        if (basket.basketProducts[index].amount > 1) {
                                          {
                                            store
                                              ..dispatch(ModifyAmount(basket.basketProducts[index], -1))
                                              ..dispatch(SetBasket(store.state.auth.user!.uid, store.state.basket));
                                          }
                                        }
                                      });
                                    },
                                    icon: const Icon(Icons.remove),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      _showDeleteDialog(store, basket.basketProducts[index]);
                                      store.dispatch(SetBasket(store.state.auth.user!.uid, store.state.basket));
                                    },
                                    icon: const Icon(
                                      Icons.delete,
                                      color: Colors.red,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          bottomSheet: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  width: double.infinity,
                  height: 102,
                  decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(4)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text(
                        'Sumar',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          const Text(
                            'Numar produse',
                            style: TextStyle(color: Color(0xFF676768)),
                          ),
                          Text(
                            '${basket.basketProducts.length}',
                            style: const TextStyle(color: Color(0xFF676768)),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          const Text(
                            'Pret total',
                            style: TextStyle(color: Color(0xFF676768)),
                          ),
                          Text(
                            '${basket.totalPrice.toStringAsFixed(2)} RON',
                            style: const TextStyle(color: Color(0xFF676768)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    for (final BasketProduct basketProduct in basket.basketProducts) {
                      store.dispatch(RemoveItemFromBasket(basketProduct));
                    }
                    store.dispatch(const Pay());
                  },
                  child: Container(
                    width: double.infinity,
                    height: 48,
                    decoration: BoxDecoration(color: const Color(0xFF14AD6D), borderRadius: BorderRadius.circular(4)),
                    child: const Center(
                      child: Text(
                        'Finalizează comanda',
                        style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ),
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
