import 'package:flutter/material.dart';
import 'package:belajarflutter/Components/custom_button.dart';
import 'package:belajarflutter/Components/custom_textfield.dart';

class LoginClone extends StatelessWidget {
  final TextEditingController username;
  final TextEditingController password;
  
  const LoginClone({
    super.key,
    required this.username,
    required this.password,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Instagram',
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'sans-serif',
                  ),
                ),
                const SizedBox(height: 40),

                CustomTextField(
                  controller: username,
                  hintText: "Phone number, email or username",
                ),
                const SizedBox(height: 15),

                CustomTextField(
                  controller: password,
                  hintText: "Password",
                ),
                const SizedBox(height: 15),
                
                const Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Forgot password?',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                SizedBox(
                  width: double.infinity,
                  height: 45,
                  child: CustomButton(
                    onPressed: () {
                      String usernameText = username.text.toString();
                      String passwordText = password.text.toString();
                      if(usernameText == "admin" && passwordText == "admin"){
                        print("Login Successful");
                      }else{
                        print("Login Failed");
                      }
                    }, 
                    text: 'Log In',
                  ),
                ),
                const SizedBox(height: 30),

                Row(
                  children: [
                    Expanded(child: Divider(color: Colors.grey[400])),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        'OR',
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Expanded(child: Divider(color: Colors.grey[400])),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      
      // Bagian bawah layar (Sign up)
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
          border: Border(top: BorderSide(color: Colors.grey[300]!)),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Don't have an account? ",
              style: TextStyle(color: Colors.grey),
            ),
            Text(
              "Sign up",
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}