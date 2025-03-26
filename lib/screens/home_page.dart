import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Nice, you are LOGGED IN!"),
            SizedBox(height: 25),
            ElevatedButton(
              onPressed: () async => await FirebaseAuth.instance.signOut(),
              child: Text("Logout"),
            ),
          ],
        ),
      ),
    );
  }
}
