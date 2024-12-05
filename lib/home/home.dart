import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_sigorta/home/blog.dart';
import 'package:flutter_sigorta/home/insurances/car_insurance/car_plaka.dart';
//import 'package:flutter_sigorta/home/insurances/insurances.dart';
//import 'package:flutter_sigorta/home/insurances/insurances_price.dart';
import 'package:flutter_sigorta/home/slider_screen.dart';
import 'package:flutter_sigorta/home/yazilar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
        child: ListView(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.24,
                    child: SliderScreen(),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text("Hizmetler",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Text("Tüm Hizmetler",
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.7),
                              fontSize: 14)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
      
                //SizedBox(child: Insurances()),
                GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 3,
                  childAspectRatio: 2 / 2,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    _insurances(Icons.directions_bike, 'Bisiklet\n sigortası',
                        Colors.lightGreen.shade300),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => InsurancePrice(),
                          ),
                        );
                      },
                      child: _insurances(Icons.no_crash_outlined,
                          'Otomobil\n sigortası', Colors.blueAccent.shade100),
                    ),
                    _insurances(Icons.health_and_safety, 'Sağlık\n sigortası',
                        Colors.purpleAccent.shade100),
                    _insurances(Icons.flight_outlined, 'Seyahat\n sigortası',
                        Colors.pinkAccent.shade100),
                    _insurances(Icons.shield_moon, 'Süreli yaşam\n sigortası',
                        Colors.yellowAccent.shade100),
                    _insurances(Icons.savings, 'Yatırım planı\n sigortası',
                        Colors.redAccent.shade100),
                  ],
                ),
      
                SizedBox(
                  height: 10,
                ),
      
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text("Sigorta Nasıl İşler",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Text("Tüm İşlemler",
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.7),
                              fontSize: 14)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
      
                SizedBox(
                  child: Yazilar(),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text("Blog",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Text("Tüm Bloglar",
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.7),
                              fontSize: 14)),
                    ),
                  ],
                ),
      
                SizedBox(
                  height: 10,
                ),
      
                SizedBox(
                  child: Blog(),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _insurances(IconData icon, String title, Color color) {
    return Card(
      elevation: 2,
      color: color,
      margin: EdgeInsets.all(8),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 40,
              color: Colors.black.withOpacity(0.7),
            ),
            SizedBox(height: 8),
            Text(
              title,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
