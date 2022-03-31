import 'package:flutter/material.dart';

class Brands extends StatelessWidget {
  final Color backgroundColor;
  final String image;

  const Brands({required this.backgroundColor, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      width: 65,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Image.asset(image),
    );
  }
}
