import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:medchain/src/actions/index.dart';
import 'package:medchain/src/models/index.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String? errorText;

  void _onResponse(dynamic action) {
    if (action is LoginError) {
      final Object error = action.error;
      if (error is FirebaseAuthException) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(error.message ?? error.code)));
      }
    } else {
      Navigator.pushNamed(context, '/home_page');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: SingleChildScrollView(
          reverse: true,
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 50,
                ),
                Image.asset(
                  'assets/images/pharmachain_logo.png',
                  scale: 1.5,
                ),
                const SizedBox(
                  height: 25,
                ),
                TextFormField(
                  controller: emailController,
                  cursorColor: const Color(0xFF39C7A6),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    hintText: 'Email',
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: passwordController,
                  cursorColor: const Color(0xFF39C7A6),
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    hintText: 'Password',
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text("Don't have an account?"),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/create_user');
                      },
                      child: const Text('Sign Up', style: TextStyle(color: Color(0xFF31B77F))),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                Align(
                  alignment: AlignmentDirectional.center,
                  child: FloatingActionButton.extended(
                    onPressed: () {
                      final Login action =
                          Login(email: emailController.text, password: passwordController.text, response: _onResponse);
                      StoreProvider.of<AppState>(context).dispatch(action);
                    },
                    icon: const Icon(Icons.arrow_forward),
                    label: const Text('LOGIN'),
                    backgroundColor: const Color(0xFF31B77F),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
