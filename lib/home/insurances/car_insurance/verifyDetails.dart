import 'package:flutter/material.dart';
import 'package:flutter_sigorta/home/insurances/car_insurance/ek_teminantlar.dart';
import 'package:flutter_sigorta/home/insurances/car_insurance/makeModelSelection.dart';

class VerifyBikeDetailsScreen extends StatefulWidget {
  @override
  _VerifyBikeDetailsScreenState createState() =>
      _VerifyBikeDetailsScreenState();
}

class _VerifyBikeDetailsScreenState extends State<VerifyBikeDetailsScreen> {
  String _selectedMakeModel = 'Marka/Model seçiniz';
  DateTime? selectedDate;
  String? selectedOption;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Otomobil Bilgilerini Kontrol Et'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xFFF8F8F8),
                ),
                child: ListTile(
                  title: Text(_selectedMakeModel),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () async {
                    final result = await Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MakeModelSelectionScreen()),
                    );
                    if (result != null) {
                      setState(() {
                        _selectedMakeModel = result;
                      });
                    }
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xFFF8F8F8),
                ),
                child: ListTile(
                  title: Text(selectedDate != null
                      ? '${selectedDate!.day}.${selectedDate!.month}.${selectedDate!.year}'
                      : 'Yeni poliçe başlangıç tarihini seçin'),
                      trailing: Icon(Icons.calendar_today),
                  onTap: () {
                    _showDatePicker(context);
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xFFF8F8F8),
                ),
                child: ListTile(
                  title: Text(selectedOption ?? 'Bir seçenek belirleyin'),
                  trailing: Icon(Icons.arrow_drop_down),
                  onTap: () {
                    _showOptions(context);
                  },
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
                                  builder: (context) => EkTeminatlar(),
                                ),
                              );
                            },
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 12.0),
                              child: Text(
                                "Planları İncele",
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

  Future<void> _showDatePicker(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );
     if (pickedDate != null) {
      setState(() {
        selectedDate = pickedDate;
      });
    }
  }
  void _showOptions(BuildContext context) async {
    final String? result = await showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          child: Wrap(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 12, top: 4),
                child: Text(("Mevcut poliçe durumu"), style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ),
              ListTile(
                title: Text('Geçerliliği devam eden sigorta'),
                onTap: () {
                  Navigator.pop(context, 'Geçerliliği devam eden sigorta');
                },
              ),
             SizedBox(height: 1, child: Divider(color: Colors.deepPurple.shade300,),),
              ListTile(
                title: Text('Son 90 gün içinde süresi dolmuş'),
                onTap: () {
                  Navigator.pop(context, 'Son 90 gün içinde süresi dolmuş');
                },
              ),
             SizedBox(height: 1, child: Divider(color: Colors.deepPurple.shade300,),),
              ListTile(
                //leading: Icon(Icons.video_library),
                title: Text('90 günden daha uzun bir süre önce sona ermiş'),
                onTap: () {
                  Navigator.pop(context, '90 günden daha uzun bir süre önce sona ermiş');
                },
              ),
            ],
          ),
        );
      },
    );

    if (result != null) {
      setState(() {
        selectedOption = result;
      });
    }
  }
}