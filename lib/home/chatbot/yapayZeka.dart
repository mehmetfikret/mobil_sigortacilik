import 'package:flutter/material.dart';
import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:flutter_gemini/flutter_gemini.dart';

class YapayZeka extends StatefulWidget {
  const YapayZeka({super.key});

  @override
  State<YapayZeka> createState() => _YapayZekaState();
}

class _YapayZekaState extends State<YapayZeka> {

  final Gemini gemini = Gemini.instance;

  List<ChatMessage> messages = [];
  
  ChatUser currentUser = ChatUser(id: "0", firstName: "User");
  ChatUser geminiUser = ChatUser(id: "1", firstName: "Gemini",
  //profileImage: "assets/images/google-gemini-logo-A5787B2669-seeklogo.com"
  );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gemini Chat"),
      ),
      body: _buildUI(),
    );
  }

  Widget _buildUI(){
    return DashChat(currentUser: currentUser, onSend: _sendMessage, messages: messages);
  }

  void _sendMessage(ChatMessage chatMessage){
    setState(() {
      messages = [chatMessage, ...messages];
    });
    try{
      String question = chatMessage.text;
      
      // ignore: deprecated_member_use
      gemini.streamGenerateContent(question).listen((event) { 
        ChatMessage? lastMessage = messages.firstOrNull;
        if(lastMessage!=null && lastMessage.user == geminiUser)
        {
          lastMessage = messages.removeAt(0);
          String response = event.content?.parts?.fold("", (previous, current) => "$previous${current.toString()}") ?? "";
          lastMessage.text = response; 
          setState(() {
            messages = [lastMessage!, ...messages];
          });
        }else{
          String response = event.content?.parts?.fold("", (previous, current) => "$previous${current.toString()}") ?? "";
          ChatMessage message = ChatMessage(user: geminiUser, createdAt: DateTime.now(),text: response);
          setState(() {
            messages = [message, ...messages];
          });
        }
      });
    }catch(e){
      print(e);
    }
  }

}