import 'package:flutter/material.dart';
import 'package:intro_pro/screens/login_screen.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({Key? key}) : super(key: key);

  @override
  _CreateAccountScreenState createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
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
              const Text('Already have an account?'),
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
            padding: const EdgeInsets.all(5),
            child: TextField(
              controller: usernameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'User Name',
              ),
            ),
          ),
          // Container(
          //   padding: const EdgeInsets.all(5),
          //   child: TextField(
          //     controller: usernameController,
          //     decoration: const InputDecoration(
          //       border: OutlineInputBorder(),
          //       labelText: 'Sponser ID',
          //     ),
          //   ),
          // ),
          Container(
            padding: const EdgeInsets.all(5),
            child: TextField(
              controller: usernameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(5),
            child: TextField(
              obscureText: true,
              controller: passwordController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(5),
            child: TextField(
              obscureText: true,
              controller: passwordController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Phone',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(5),
            child: TextField(
              obscureText: true,
              controller: passwordController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Address Line 1',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(5),
            child: TextField(
              obscureText: true,
              controller: passwordController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Address Line 2',
              ),
            ),
          ),
          // Container(
          //   padding: const EdgeInsets.all(5),
          //   child: TextField(
          //     obscureText: true,
          //     controller: passwordController,
          //     decoration: const InputDecoration(
          //       border: OutlineInputBorder(),
          //       labelText: 'Pan Card',
          //     ),
          //   ),
          // ),
          const SizedBox(
            height: 20,
          ),
          Container(
              height: 60,
              padding: const EdgeInsets.all(5),
              child: ElevatedButton(
                child: const Text('Sign Up'),
                onPressed: () {},
              )),
        ],
      ),
    ));
  }
}
