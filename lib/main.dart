import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:flutter_sigorta/firebase_options.dart';
=======
import 'package:flutter_sigorta/home/chatbot/consts.dart';
>>>>>>> 36bfc066338506fe88fd3159317a979c9b786683
import 'package:flutter_sigorta/splash.dart';
import 'package:flutter_gemini/flutter_gemini.dart';

<<<<<<< HEAD
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
=======
void main(List<String> args) {

  /*Gemini.init(
    apiKey: GEMINI_API_KEY,
  );*/

>>>>>>> 36bfc066338506fe88fd3159317a979c9b786683
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