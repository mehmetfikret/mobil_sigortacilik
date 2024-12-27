import 'package:flutter/material.dart';
import 'package:flutter_sigorta/home/insurances/credit_Card/credit_card.dart';
import 'package:flutter_sigorta/home/insurances/car_insurance/teminant_details.dart';

class EkTeminatlar extends StatefulWidget {
  const EkTeminatlar({super.key});

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
        title: const Text('Ek Teminatları Seçin'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Ek teminatlar 1 yıl geçerlidir', style: TextStyle(fontSize: 16)),
              const SizedBox(height: 20),
              Card(
                elevation: 2,
                child: ListTile(
                  title: const Text('Kaza teminatı'),
                  subtitle: const Text('Bu ek teminat, otomobil sahibinin kaza sonucu yaralanma veya ölümünü kapsar'),
                  trailing: const Text('₺123.00'),
                  onTap: _toggleAccidentCover,
                  selected: kazaTeminatiEklendiMi,
                  selectedTileColor: Colors.grey.shade200,
                ),
              ),           
              const SizedBox(height: 20),
              const Text('Toplam fiyat', style: TextStyle(fontSize: 18)),
              const SizedBox(height: 10),
              Text('₺${toplamUcret.toStringAsFixed(2)}', style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
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
                            
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(255, 105, 43, 118)),
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 12.0),
                              child: Text(
                                "Devam Et",
                                style:
                                    TextStyle(color: Colors.white, fontSize: 18),
                              ),
                            ),
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
