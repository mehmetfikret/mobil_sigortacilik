import 'package:flutter/material.dart';
//import 'package:flutter_ubii/kesfetPage/kesfet_production.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: TextField(
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            filled: true,
            fillColor: Color(0xFF302360),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide.none
            ),
            hintText: "Eg: Deneme",
            prefixIcon: Icon(Icons.search),
            prefixIconColor: Colors.purple.shade900
          ),
        ),
        backgroundColor: Colors.transparent,
      ),*/
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(height: 15,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 28,),
              child: TextField(
                style: TextStyle(color: Colors.black.withOpacity(0.7)),
                decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xFFF8F8F8),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide.none,
                        ),
                    hintText: "Arama",
                    hintStyle: TextStyle(color: Colors.black.withOpacity(0.9)),
                    prefixIcon: Icon(Icons.search_outlined),
                    prefixIconColor: Colors.black.withOpacity(0.9)),
              ),
            ),
            SizedBox(height: 10,),
            /*Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.fromLTRB(0, 1, 0, 1),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.3,
                ),
                itemCount: 12,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      print('Tıklandı:');
                    },
                    child: ,
                  );
                },
              ),
            ),*/
          ],
        ),
      ),
    );
  }
}
