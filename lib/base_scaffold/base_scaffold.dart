import 'package:flutter/material.dart';
import 'package:flutter_sigorta/base_scaffold/bottomNavBar.dart';
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
            icon: Icon(Icons.notifications_active_outlined, color: Colors.black,),
            onPressed: () {
              // İkonun tıklanma işlemleri buraya gelir
            },
          ),
          IconButton(
            icon: FaIcon(FontAwesomeIcons.comments),
            //icon: Icon(Icons.comment_outlined),
            onPressed: () {
              // İkonun tıklanma işlemleri buraya gelir
            },
          ),
        ],
      ),
      body: Scaffold(
        body: ModernBottomNavnar(),
      ),
    );
  }
}