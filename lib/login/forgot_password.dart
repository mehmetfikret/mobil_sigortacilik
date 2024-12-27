import 'package:flutter/material.dart';
import 'package:flutter_sigorta/constant/constant.dart';
import 'package:flutter_sigorta/login/my_textfile_register.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final emailController = TextEditingController();
  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  /*Future passwordReset() async {
    try{
      await FirebaseAuth.instance.sendPasswordResetEmail(email: emailController.text.trim());
      showDialog(context: context, builder: (context) {
        return AlertDialog(
          content: Text("Şifrenizi yenilemek için e-posta adresinize gönderdiğimiz linkten yenileyebilirsiniz."),
          actions: [
            MaterialButton(onPressed: () {
             return Navigator.pop(context);
            },child: Text("Giriş Sayfasına Dön"),)
          ],
        );
      },);
    }on FirebaseAuthException catch(e){
      print(e);
      showDialog(context: context, builder: (context) {
        return AlertDialog(
          content: Text("Geçerli bir email adresi giriniz"),
          actions: [
            MaterialButton(onPressed: () {
              return Navigator.pop(context);
            },child: Text("Tamam"),)
          ],
        );
      },);
    }
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Constant.orange,
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
                "Mail hesabınıza gönderdiğimiz bağlantıya tıklayarak şifrenizi yenileyebilirsiniz",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20),
                ),
          ),
          const SizedBox(height: 15,),
          MyTextFile(          
            controller: emailController,
            hintText: "Email",
            obscureText: false,
          ),
          const SizedBox(height: 15,),
          MaterialButton(
            onPressed: () {
              //passwordReset();
            },
            color: Constant.orange,
            child: Text(
              "Şifreyi Yenile",
              style: TextStyle(color: Constant.white),
            ),
          )
        ],
      ),
    );
  }
}
