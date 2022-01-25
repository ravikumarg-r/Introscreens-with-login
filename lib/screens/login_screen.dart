import 'package:flutter/material.dart';
import 'package:intro_pro/screens/create_account_screen.dart';
import 'package:intro_pro/screens/forgotpassword_screen.dart';
import 'package:intro_pro/screens/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(5),
      child: ListView(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(5),
            child: const Text(
              'Welcome',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 25),
            ),
          ),
          Row(
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.all(5),
              ),
              const Text('Does not have account?'),
              TextButton(
                child: const Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 15, color: Colors.red),
                ),
                onPressed: () {
                  //signup screen
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CreateAccountScreen()));
                },
              )
            ],
            mainAxisAlignment: MainAxisAlignment.start,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: usernameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'User Name',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: TextField(
              obscureText: true,
              controller: passwordController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(0),
            child: TextButton(
              onPressed: () {
                //forgot password screen
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ForgotpasswordScreen()));
              },
              child: const Text(
                'Forgot Password',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          Container(
              height: 50,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                child: const Text('Login'),
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()));
                },
              )),
        ],
      ),
    ));
  }
}
