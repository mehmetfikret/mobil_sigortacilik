import 'package:flutter/material.dart';
import 'package:flutter_sigorta/home/insurances/car_insurance/see_benefits.dart';
import 'package:flutter_sigorta/home/insurances/car_insurance/verifyDetails.dart';

class PriceDetails extends StatefulWidget {
  const PriceDetails({super.key});

  @override
  State<PriceDetails> createState() => _PriceDetailsState();
}

class _PriceDetailsState extends State<PriceDetails> {
  int? selectedOption;

  int _value = 1;

  Widget CustomRadio(String text, int index) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
          backgroundColor: const Color(0xFFF8F8F8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          side: BorderSide(
              color: (selectedOption == index)
                  ? Colors.deepPurple
                  : Colors.grey.withOpacity(0.3),
              width: 2)),
      onPressed: () {
        setState(() {
          selectedOption = index;
        });
      },
      child: Text(
        text,
        style: TextStyle(
            color: (selectedOption == index) ? Colors.deepPurple : Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.normal),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Detaylar",
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
                        color: const Color(0xFFF8F8F8)),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Mercedes S400",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          Text(
                            "Sigorta primi %0",
                            style: TextStyle(color: Colors.black54),
                          ),
                          Text(
                            "Sene: 2024",
                            style: TextStyle(color: Colors.black54),
                          ),
                          Text(
                            "Poliçe Süresi Geçti",
                            style: TextStyle(color: Colors.black54),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                // Seçilen seçeneğin dizinini depolamak için değişken
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomRadio("1 sene", 1),
                      CustomRadio("2 sene", 2),
                      CustomRadio("3 sene", 3),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                        width: size.width,
                        height: size.height * 0.4,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0xFFF8F8F8)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            RadioListTile(
                              groupValue: _value,
                              value: 1,
                              onChanged: (val) {
                                setState(() {
                                  _value = val as int;
                                });
                              },
                              title: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Geniş Kapsamlı Paket"),
                                  Text(
                                    "₺200.00",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  )
                                ],
                              ),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.check,
                                        size: 18,
                                      ), // Tik ikonu
                                      SizedBox(
                                          width:
                                              4), // İkon ile metin arasındaki boşluk
                                      Text("Sizin aracınıza verilen hasarları kapsar"),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.check, size: 18), // Tik ikonu
                                      SizedBox(
                                          width:
                                              4), // İkon ile metin arasındaki boşluk
                                      Text("Diğer araçlara verilen hasarları kapsar"),
                                    ],
                                  ),
                                  TextButton(
                                      onPressed: () {
                                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SeeBenefits(),
                            ),
                          );
                                      },
                                      child: Text(
                                        "Ayrıntıları İncele",
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.deepPurple),
                                      ))
                                ],
                              ),
                            ),
                            RadioListTile(
                                groupValue: _value,
                                value: 2,
                                onChanged: (val) {
                                  setState(() {
                                    _value =
                                        val as int; // int'e dönüştürme işlemi
                                  });
                                },
                                title: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Mini Paket"),
                                    Text(
                                      "₺163.00",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    )
                                  ],
                                ),
                                subtitle: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.check,
                                            size: 18), // Tik ikonu
                                        SizedBox(
                                            width:
                                                4), // İkon ile metin arasındaki boşluk
                                        Text("Sizin aracınıza verilen hasarları kapsar"),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.close_rounded,
                                            size: 18), // Tik ikonu
                                        SizedBox(
                                            width:
                                                4), // İkon ile metin arasındaki boşluk
                                        Text(
                                            "Diğer araçlara verilen hasarları kapsar"),
                                      ],
                                    ),
                                    TextButton(
                                        onPressed: () {},
                                        child: Text(
                                          "Ayrıntıları İncele",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.deepPurple),
                                        ))
                                  ],
                                )),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 16),
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              VerifyBikeDetailsScreen(),
                                        ),
                                      );
                                    },
                                    child: Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 12.0),
                                      child: Text(
                                        "Devam Et",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 18),
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            Color.fromARGB(255, 105, 43, 118)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
        ));
  }
}
