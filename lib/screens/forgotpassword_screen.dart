import 'package:flutter/material.dart';
import 'package:intro_pro/screens/login_screen.dart';

class ForgotpasswordScreen extends StatefulWidget {
  const ForgotpasswordScreen({Key? key}) : super(key: key);

  @override
  _ForgotpasswordScreenState createState() => _ForgotpasswordScreenState();
}

class _ForgotpasswordScreenState extends State<ForgotpasswordScreen> {
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
              const Text('Remember password?'),
              TextButton(
                child: const Text(
                  'Sign In',
                  style: TextStyle(fontSize: 15, color: Colors.red),
                ),
                onPressed: () {
                  //signup screen
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()));
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
                labelText: 'Email',
              ),
            ),
          ),
          Container(
              height: 50,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                child: const Text('Reset'),
                onPressed: () {},
              )),
        ],
      ),
    ));
  }
}
