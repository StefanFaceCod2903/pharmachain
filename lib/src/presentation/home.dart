import 'package:flutter/material.dart';
import 'package:medchain/src/models/index.dart';
import 'package:medchain/src/presentation/containers/user_container.dart';
import 'package:medchain/src/presentation/home_page.dart';

import 'package:medchain/src/presentation/login_page.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return UserContainer(
      builder: (BuildContext context, LoginUser? user) {
        if (user == null) {
          return const LoginPage();
        } else {
          return const HomePage();
        }
      },
    );
  }
}
