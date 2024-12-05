import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Blog extends StatelessWidget {
  const Blog({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 155,
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
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24)),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Ink.image(
                          image: AssetImage("assets/images/blob.jpg"),
                          height: 130,
                          fit: BoxFit.fill,
                        ),
                        Positioned(
                            bottom: 5,
                            left: 20,
                            child: Text(
                              "BLOG BAŞLIĞI lorem ipsum del a struct tu",
                              style: TextStyle(
                                  color: Colors.black,
                                  backgroundColor: Colors.blueGrey.shade100.withOpacity(0.7),
                                  fontSize: 16
                                  ),
                            )),
                      ],
                    ),
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
