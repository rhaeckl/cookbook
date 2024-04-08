import 'package:cookbook/components/button.dart';
import 'package:cookbook/models/login_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

import '../components/text_field.dart';

class LoginScreen extends StatefulWidget {
  final LoginImage loginImage;

  const LoginScreen({super.key, required this.loginImage});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff4db7aa),
        body: Column(
          children: [
            Image.asset(widget.loginImage.imagePath),
            SafeArea(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Center(
                child: Column(
                  children: [
                    const SizedBox(height: 0),
                    const Text(
                      "Willkommen zurück!",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    MyTextField(
                        controller: emailTextController,
                        hintText: 'E-Mail Adresse',
                        obscureText: false),
                    const SizedBox(height: 10),
                    MyTextField(
                        controller: passwordTextController,
                        hintText: 'Passwort',
                        obscureText: true),
                    const SizedBox(height: 5),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Passwort vergessen?',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    MyButton(onTap: () {}, text: 'Anmelden'),
                    const SizedBox(height: 30),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25.0),
                      child: Row(
                        children: [
                          Expanded(
                              child: Divider(
                            thickness: 0.5,
                            color: Colors.white,
                          )),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            child: Text(
                              'Oder fortahren mit',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          Expanded(
                              child: Divider(
                            thickness: 0.5,
                            color: Colors.white,
                          ))
                        ],
                      ),
                    ),
                    const SizedBox(height: 25),
                    SignInButton(
                      Buttons.Google,
                      text: "Mit Google anmelden",
                      onPressed: () {},
                    ),
                    const SizedBox(height: 25),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Du hast kein Konto?",
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                        SizedBox(width: 4),
                        Text(
                          "Registrieren",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ))
          ],
        ));
  }
}
