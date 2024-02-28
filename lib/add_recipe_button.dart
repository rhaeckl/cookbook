import 'package:flutter/material.dart';

class AddRecipeButton extends StatefulWidget {
  const AddRecipeButton({super.key});

  @override
  State<AddRecipeButton> createState() => _AddRecipeButtonState();
}

class _AddRecipeButtonState extends State<AddRecipeButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: 50,
        child: FilledButton.icon(
            style: const ButtonStyle(
                alignment: Alignment.centerLeft,
                backgroundColor: MaterialStatePropertyAll(Color(0xe8e8e8e8))),
            onPressed: addRecipe,
            icon: const Icon(Icons.add, color: Colors.black,),
            label: const Text(
                style: TextStyle(
                    fontFamily: 'Uber',
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
                'Rezept hinzufügen')));
  }

  void addRecipe() {
    Navigator.pushNamed(context, "/add_recipe");
  }
}
