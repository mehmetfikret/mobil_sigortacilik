/*import 'package:flutter/material.dart';
import 'package:flutter_sigorta/constant/constant.dart';

class GetUserName extends StatelessWidget {
  final String documentId;
  //final getUid = FirebaseAuth.instance.currentUser!.uid;
  GetUserName({required this.documentId});

  @override
  Widget build(BuildContext context) {
    CollectionReference users = FirebaseFirestore.instance.collection('users');

    return FutureBuilder<DocumentSnapshot>(
      future: users.doc(documentId).get(),    
      builder:((context, snapshot) {
         if (snapshot.connectionState == ConnectionState.done) {
        Map<String, dynamic>? data = snapshot.data!.data() as Map<String, dynamic>;
          return Text("${data['firstName']} ${data['lastName']}");
         }
         
         return const CircularProgressIndicator(backgroundColor: Constant.orange, valueColor:  AlwaysStoppedAnimation<Color>(Colors.white),);
      }),
      
    );
  }
}*/