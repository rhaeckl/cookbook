import 'package:cookbook/screens/login_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/login_image.dart';
import 'home_page.dart';

class AuthScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return HomePage();
          }
          else {
            return LoginScreen(loginImage: LoginImage(
                imagePath: "assets/images/login_image.jpg"), onTap: (){});
          }
        },
      ),
    );
  }

}