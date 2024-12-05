import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_sigorta/myPolicies/details_row.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PoliciesDetails extends StatelessWidget {
  const PoliciesDetails({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Poliçe Detayları",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: size.width,
                height: size.height * 0.2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage("assets/images/mercedes1.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: size.width,
                height: size.height * 0.5,
                decoration: BoxDecoration(
                  color: const Color(0xFFF8F8F8),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Araç ve plan detayları",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      CustomRow(leftText: 'Otomobil Numarası', rightText: "GJ971235"),
                      CustomRow(
                          leftText: 'Marka/Model', rightText: "Mercedes S600"),
                      CustomRow(
                          leftText: 'Kayıt Yılı', rightText: "2024"),
                      CustomRow(
                          leftText: 'Sigorta Değeri', rightText: "₺160.00"),
                      CustomRow(
                          leftText: 'Poliçe başlangıç tarihi',
                          rightText: "08.05.2024"),
                      CustomRow(
                          leftText: 'Seçilen paket',
                          rightText: "Geniş kapsamlı"),
                      CustomRow(leftText: 'Plan vadesi', rightText: "1 sene"),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Text(
                "Otomobil sahibinin detayları",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: size.width,
                height: size.height * 0.070,
                decoration: BoxDecoration(
                  color: const Color(0xFFF8F8F8),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RichText(
                      text: TextSpan(children: [
                    TextSpan(
                      text: "Mehmet Fikret\n",
                      style: TextStyle(color: Colors.black,),
                    ),
                    TextSpan(
                      text: "mehmetfikret@gmail.com",
                      style: TextStyle(color: Colors.black45),
                    ),
                  ])),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Text(
                "Ödeme",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: size.width,
                height: size.height * 0.075,
                decoration: BoxDecoration(
                  color: const Color(0xFFF8F8F8),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Google Pay"),
                      TextButton.icon(onPressed: () {
                        
                      }, icon: FaIcon(FontAwesomeIcons.google, size: 18,), label: Text("Pay"))
                    ],
                  )
                ),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
