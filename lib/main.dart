import 'package:cookbook/models/login_image.dart';
import 'package:cookbook/screens/auth_screen.dart';
import 'package:cookbook/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cookbook/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
        "/": (context) => AuthScreen()
        // "/": (context) => LoginScreen(loginImage: LoginImage(imagePath: "assets/images/login_image.jpg"), onTap: () {  },)
        //     loginImage: LoginImage(imagePath: "assets/images/login_image.jpg")),
        // "/": (context) => const HomeScreen(),
        // "/add_recipe": (context) => const AddRecipeScreen()
      },
    );
  }
}
