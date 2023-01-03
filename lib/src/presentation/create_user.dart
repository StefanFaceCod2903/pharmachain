import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:medchain/src/actions/index.dart';
import 'package:medchain/src/models/index.dart';

class CreateUserPage extends StatefulWidget {
  const CreateUserPage({super.key});

  @override
  State<CreateUserPage> createState() => CreateUserPageState();
}

class CreateUserPageState extends State<CreateUserPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController displayNameController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void _onResponse(dynamic action) {
    if (action is CreateUserError) {
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
                  validator: (String? value) {
                    if (value == null) {
                      return 'This field is mandatory';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: displayNameController,
                  cursorColor: const Color(0xFF39C7A6),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    hintText: 'Username',
                  ),
                  validator: (String? value) {
                    if (value == null) {
                      return 'This field is mandatory';
                    }
                    return null;
                  },
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
                  validator: (String? value) {
                    if (value == null) {
                      return 'This field is mandatory';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: confirmPasswordController,
                  cursorColor: const Color(0xFF39C7A6),
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    hintText: 'Confirm password',
                  ),
                  validator: (String? value) {
                    if (value == null) {
                      return 'This field is mandatory';
                    }
                    if (value != passwordController.text) {
                      return "Password and confirm password don't coincide!";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text('Already have an account?'),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      child: const Text('Sign In', style: TextStyle(color: Color(0xFF31B77F))),
                    )
                  ],
                ),
                Align(
                  alignment: AlignmentDirectional.center,
                  child: FloatingActionButton.extended(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        final CreateUser action = CreateUser(
                          email: emailController.text,
                          password: passwordController.text,
                          displayName: displayNameController.text,
                          response: _onResponse,
                        );
                        StoreProvider.of<AppState>(context).dispatch(action);
                      }
                    },
                    icon: const Icon(Icons.arrow_forward),
                    label: const Text('SIGN UP'),
                    backgroundColor: const Color(0xFF31B77F),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
