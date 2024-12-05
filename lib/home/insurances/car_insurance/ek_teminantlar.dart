import 'package:flutter/material.dart';
import 'package:flutter_sigorta/home/insurances/credit_Card/credit_card.dart';
import 'package:flutter_sigorta/home/insurances/car_insurance/teminant_details.dart';

class EkTeminatlar extends StatefulWidget {
  @override
  _EkTeminatlarState createState() => _EkTeminatlarState();
}

class _EkTeminatlarState extends State<EkTeminatlar> {
  bool kazaTeminatiEklendiMi = false;
  double toplamUcret = 822.00;

  void _toggleAccidentCover() {
    setState(() {
      kazaTeminatiEklendiMi = !kazaTeminatiEklendiMi;
      toplamUcret = kazaTeminatiEklendiMi ? toplamUcret + 123.00 : toplamUcret - 123.00;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ek Teminatları Seçin'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Ek teminatlar 1 yıl geçerlidir', style: TextStyle(fontSize: 16)),
              SizedBox(height: 20),
              Card(
                elevation: 2,
                child: ListTile(
                  title: Text('Kaza teminatı'),
                  subtitle: Text('Bu ek teminat, otomobil sahibinin kaza sonucu yaralanma veya ölümünü kapsar'),
                  trailing: Text('₺123.00'),
                  onTap: _toggleAccidentCover,
                  selected: kazaTeminatiEklendiMi,
                  selectedTileColor: Colors.grey.shade200,
                ),
              ),           
              SizedBox(height: 20),
              Text('Toplam fiyat', style: TextStyle(fontSize: 18)),
              SizedBox(height: 10),
              Text('₺${toplamUcret.toStringAsFixed(2)}', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              Spacer(),
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
                                  builder: (context) => MyCardsPage(),
                                ),
                              );
                            },
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 12.0),
                              child: Text(
                                "Devam Et",
                                style:
                                    TextStyle(color: Colors.white, fontSize: 18),
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
      ),
    );
  }
}
