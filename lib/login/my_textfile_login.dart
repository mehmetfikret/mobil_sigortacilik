import 'package:flutter/material.dart';
import 'package:flutter_sigorta/constant/constant.dart';

class MyTextFile2 extends StatelessWidget {
  
  final controller;
  final String hintText;
  final bool obscureText;
  final Widget iconData;

   const MyTextFile2({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
    required this.iconData
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: TextField(         
                         
                  controller: controller,
                  obscureText: obscureText,
                  decoration: InputDecoration(
                    //suffixIcon: Icon(Icons.remove_red_eye),
                    prefixIcon: iconData,
                      enabledBorder:  const OutlineInputBorder(
                          borderSide: BorderSide(color: Constant.orange)),
                      focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Constant.orange)),
                          fillColor: Constant.darkWhite,
                          filled: true,
                          hintText: hintText,
                          hintStyle: const TextStyle(color:Color.fromARGB(255, 34, 34, 34)),
                          ),
                ),
              );
  }
}