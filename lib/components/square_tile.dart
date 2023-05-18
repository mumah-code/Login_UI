import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Square extends StatelessWidget {
  final String imagePath;
  const Square({super.key, required this.imagePath});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Image.asset(
        imagePath,
        height: 40,
      ),
    );
  }
}
