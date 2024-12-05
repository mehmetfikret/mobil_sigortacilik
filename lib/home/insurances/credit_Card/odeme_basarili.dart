import 'package:flutter/material.dart';
import 'package:flutter_sigorta/base_scaffold/base_scaffold.dart';
import 'dart:async';


class OdemeBasarili extends StatelessWidget {
  const OdemeBasarili({Key? key}); // key parametresi düzeltilmiştir

  @override
  Widget build(BuildContext context) {
    // initState metodunda bir zamanlayıcı başlatılır
    Timer(Duration(seconds: 3), () {
      // 3 saniye sonra anasayfaya geri dönülür
      Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => BaseScaffold()));
    });

    return Scaffold(
      appBar: AppBar(
        title: Text('Ödeme Başarılı'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.check_circle, color: Colors.green, size: 100),
            SizedBox(height: 20),
            Text('Ödeme Başarıyla Gerçekleştirildi', style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
