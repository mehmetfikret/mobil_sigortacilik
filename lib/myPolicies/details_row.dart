import 'package:flutter/material.dart';

class CustomRow extends StatelessWidget {
  final String leftText;
  final String rightText;

  const CustomRow({Key? key, required this.leftText, required this.rightText}) : super(key: key);

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
                style: TextStyle(color: Colors.black54),
              ),
            ],
          ),
        ),
        Text(
          rightText,
          style: TextStyle(
              color: Colors.black),
        )
      ],
    );
  }
}