import 'package:flutter/material.dart';

class CustomRow extends StatelessWidget {
  final String leftText;
  final String rightText;

  const CustomRow({super.key, required this.leftText, required this.rightText});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: leftText,
                style: const TextStyle(color: Colors.black54),
              ),
            ],
          ),
        ),
        Text(
          rightText,
          style: const TextStyle(
              color: Colors.black),
        )
      ],
    );
  }
}