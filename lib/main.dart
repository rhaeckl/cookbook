import 'package:cookbook/models/login_image.dart';
import 'package:cookbook/screens/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cookery',
      theme: ThemeData(primarySwatch: Colors.cyan, useMaterial3: true),
      initialRoute: "/",
      routes: {
        "/": (context) => LoginScreen(
            loginImage: LoginImage(imagePath: "assets/images/login_image.jpg")),
        // "/": (context) => const HomeScreen(),
        // "/add_recipe": (context) => const AddRecipeScreen()
      },
    );
  }
}
