import 'package:flutter/material.dart';

import '../add_recipe_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text(
              style: TextStyle(
                  fontFamily: 'Uber',
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
              "Didis fancy app"),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.today),
              label: 'Heute',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favoriten',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Suche'),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Konto',
            ),
          ],
        ),
        body: SafeArea(
            child: Padding(
              padding:
              const EdgeInsets.only(left: 15, top: 10, right: 15, bottom: 25),
              child: Column(
                children: <Widget>[
                  const AddRecipeButton(),
                  const SizedBox(height: 30),
                  Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 22.5, horizontal: 0.0),
                      child: Column(
                        children: <Widget>[
                          const SizedBox(height: 50),
                          Image.asset("assets/images/cookbook.png", width: 225),
                          const SizedBox(height: 30),
                          const ListTile(
                            title: Text(
                                style: TextStyle(
                                    fontFamily: 'Uber',
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                                'Herzlich Willkommen bei der Kochbuch App!'),
                            subtitle: Text(
                                style: TextStyle(
                                    fontFamily: 'Uber',
                                    fontSize: 17,
                                    fontWeight: FontWeight.normal),
                                textAlign: TextAlign.center,
                                'Füge dein erstes Rezept hinzu.'),
                            isThreeLine: true,
                          ),
                        ],
                      ))
                ],
              ),
            )));
  }
}
