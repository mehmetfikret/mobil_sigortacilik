import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_sigorta/home/insurances/car_insurance/car_plaka.dart';

class Insurances extends StatelessWidget {
  const Insurances({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 300,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView(
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, mainAxisExtent: 140, crossAxisSpacing: 10),
          children: [
            GestureDetector(
              onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => InsurancePrice(), 
      ),
    );
  },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.lightGreen,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [                
                    Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.white),
                      child: ClipRRect(
                        child: Icon(
                          Icons.directions_bike,
                          size: 45,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Text(
                      textAlign: TextAlign.center,
                      "Bike\n insurance",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    )
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.yellow,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.blue),
                    child: ClipRRect(
                      child: Icon(
                        Icons.home,
                        size: 55,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    "Bike\n insurance",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.blue),
                    child: ClipRRect(
                      child: Icon(
                        Icons.home,
                        size: 55,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    "Bike\n insurance",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.deepOrange,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.blue),
                    child: ClipRRect(
                      child: Icon(
                        Icons.home,
                        size: 55,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    "Bike\n insurance",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  )
                ],
              ),
            ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.orange,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.blue),
                    child: ClipRRect(
                      child: Icon(
                        Icons.home,
                        size: 55,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    "Bike\n insurance",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  )
                ],
              ),
            ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(255, 5, 108, 77),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.blue),
                    child: ClipRRect(
                      child: Icon(
                        Icons.home,
                        size: 55,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    "Bike\n insurance",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  )
                ],
              ),
            ),
            ),
          ],
        ),
      ),
    );
  }
}
