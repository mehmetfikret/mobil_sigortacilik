import 'package:flutter/material.dart';
import 'package:flutter_sigorta/base_scaffold/bottomNavBar.dart';
import 'package:flutter_sigorta/home/chatbot/yapayZeka.dart';
import 'package:flutter_sigorta/home/chatbot/yapayZekadeneme.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BaseScaffold extends StatelessWidget {
  const BaseScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: RichText(
          text: const TextSpan(
            style: TextStyle(color: Colors.black, fontSize: 20),
            children: [
              TextSpan(
                text: "Hoş geldin,\n",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
              TextSpan(
                text: "Mehmet Fikret",
                style: TextStyle(
                  color: Colors.black, 
                  fontSize: 14,  
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.white,
         actions: [
          IconButton(
            icon: const Icon(Icons.notifications_active_outlined, color: Colors.black,),
            onPressed: () {
              // İkonun tıklanma işlemleri buraya gelir
            },
          ),
          IconButton(
            icon: const FaIcon(FontAwesomeIcons.comments),
            //icon: Icon(Icons.comment_outlined),
            onPressed: () {
<<<<<<< HEAD
              Navigator.push(context, MaterialPageRoute(builder: (context) => const YapayZekaDeneme()));
=======
              Navigator.push(context, MaterialPageRoute(builder: (context) => YapayZekaDeneme()));
>>>>>>> 36bfc066338506fe88fd3159317a979c9b786683
            },
          ),
        ],
      ),
      body: const Scaffold(
        body: ModernBottomNavnar(),
      ),
     /* floatingActionButton: Padding(
        padding: const EdgeInsets.fromLTRB(1, 2, 1, 60),
        child: FloatingActionButton(
          onPressed: () {
            // Open chatbot
          },
          child: Icon(Icons.help),
        ),
      ),*/
    );
  }
}