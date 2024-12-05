import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_sigorta/home/yazilar_details.dart';

class Yazilar extends StatelessWidget {
  const Yazilar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 255,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blueGrey.shade100,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey
                        .withOpacity(0.5), // Gölgenin rengi ve opaklığı
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // Gölgenin konumu (x, y)
                  ),
                ],
              ),
              child: Center(
                child: Column(children: [
                  Card(
                    elevation: 2,
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24)),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Ink.image(
                          image: AssetImage("assets/images/yolda_kalmis.jpg"),
                          height: 100,
                          fit: BoxFit.fill,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Stack(
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                  text: "ARABANIZ YOLDA MI KALDI..?\n",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.black)),
                              TextSpan(
                                style: TextStyle(color:Colors.black),
                                  text:
                                      "Lorem ipasdasasdagfhffghhjkicies ornare magna faucibus venenatis. Vestibulum faucibus diam nec tin "),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.start,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => YazilarDetails()));
                        },
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.deepPurple,
                            foregroundColor: Colors.white),
                        child: Text(
                          "Hizmete Gözat",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ]),
              ),
            ),
          )
        ],
      ),
    );
  }
}
