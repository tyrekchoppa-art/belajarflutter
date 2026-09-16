import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page')),
        body: Column(
        children: [
          Text("welcome to login page"),
          TextField(decoration: InputDecoration(hint: Text("input username"))),     
          TextField(decoration: InputDecoration(hint: Text("input password"))),        ],
      ),
    );
  }
}