import 'package:flutter/material.dart';

class RichTextBuild extends StatelessWidget {
  final String text1;
  final String text2;

  RichTextBuild({
    required this.text1,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 30),
      child: RichText(
        text: TextSpan(
          style: TextStyle(color: Colors.white),
          children: [
            TextSpan(
              text: "${text1}",
              style: Theme.of(context).textTheme.headline5!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
            ),
            TextSpan(
                text: text2,
                style: const TextStyle(
                  color: Colors.grey,
                ))
          ],
        ),
      ),
    );
  }
}
