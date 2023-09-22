import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:new_restuarent_app/Login&Registration/login_page.dart';
import 'package:new_restuarent_app/pages/homePage.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (BuildContext context, AsyncSnapshot<User?> snapshot) {
// User is logged in

          if (snapshot.hasData) {
            return const HomePage();
          }
          // user is not logged in

          else {
            return const LogInpage();
          }
        },
      ),
    );
  }
}
