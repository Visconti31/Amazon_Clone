import 'package:amazon_clone/constants/global_variables.dart';
import 'package:flutter/material.dart';

enum Auth {
  login,
  register,
}

class AuthScreen extends StatefulWidget {
  static const String routeName = '/auth-screen';
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  Auth _auth = Auth.register;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: GlobalVariables.greyBackgroundColor,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const Text(
                  'Welcome',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                ListTile(
                  title: const Text(
                    'Create Account',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  leading: Radio(
                    activeColor: GlobalVariables.secondaryColor,
                    value: Auth.register,
                    groupValue: _auth,
                    onChanged: (Auth? value) {
                      setState(() {
                        _auth = value!;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Text(
                    'Login Account',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  leading: Radio(
                    activeColor: GlobalVariables.secondaryColor,
                    value: Auth.login,
                    groupValue: _auth,
                    onChanged: (Auth? value) {
                      setState(() {
                        _auth = value!;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
