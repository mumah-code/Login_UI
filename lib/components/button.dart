import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        padding: const EdgeInsets.all(25.0),
        margin: const EdgeInsets.symmetric(horizontal: 25.0),
        decoration: BoxDecoration(
          color: Colors.black38,
        ),
        child: const Text(
          'Sign-In',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            //backgroundColor: Colors.black54,
          ),
        ),
      ),
    );
  }
}
