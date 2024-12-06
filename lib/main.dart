import 'package:flutter/material.dart';
import 'package:flutter_sigorta/home/chatbot/consts.dart';
import 'package:flutter_sigorta/splash.dart';
import 'package:flutter_gemini/flutter_gemini.dart';

void main(List<String> args) {

  /*Gemini.init(
    apiKey: GEMINI_API_KEY,
  );*/

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}