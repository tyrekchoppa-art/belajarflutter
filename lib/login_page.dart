import 'package:flutter/material.dart';
import 'package:belajarflutter/Components/custom_textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController txtusername = TextEditingController();
  TextEditingController txtpassword = TextEditingController();
  String statuslogin = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Page")),
      body: Column(
        children: [
          Text(
            "Welcome To App " + statuslogin.toString(),
            style: TextStyle(
              fontSize: 21,
              color: const Color.fromARGB(255, 93, 25, 105),
              fontStyle: FontStyle.italic,
            ),
          ),
          Container(
            margin: EdgeInsets.all(25),
            child: CustomTextField(
              controller: txtusername,
              hintText: "Input username",
            ),
          ),
          Container(
            margin: EdgeInsets.all(25),
            child: CustomTextField(
              controller: txtpassword,
              hintText: "Input password",
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ButtonStyle(),
                onPressed: () {
                  setState(() {
                    String username = txtusername.text.toString();
                    String password = txtpassword.text.toString();
                    if (username == "admin" && password == "admin") {
                      print("Login sukses");
                      statuslogin = "woi bos";
                    } else {
                      print("Login gagal");
                      statuslogin = "gagal";
                    }
                  });
                },
                child: Text("Login"),
              ),
              ElevatedButton(
                style: ButtonStyle(),
                onPressed: () {},
                child: Text("Register"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}