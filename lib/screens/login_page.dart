import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: emailController.text,
      password: passwordController.text,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // mail account
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(hintText: "Mail"),
                ),

                SizedBox(height: 10),

                // password type in
                TextField(
                  controller: passwordController,
                  decoration: InputDecoration(hintText: "Password"),
                  obscureText: true,
                ),

                SizedBox(height: 10),

                //
                ElevatedButton(onPressed: signUserIn, child: Text("Login")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
