import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  List imageList = [
    {"id": 1, "image_path": 'assets/images/resim2.jpg'},
    {"id": 2, "image_path": 'assets/images/resim1.jpg'},
    {"id": 3, "image_path": 'assets/images/resim3.jpg'},
    
  ];
  final CarouselSliderController carouselController = CarouselSliderController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          /* gradient: LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [
          //Color(0xFFF337255C),
          //Color.fromARGB(255, 143, 96, 243),
          Color(0xFFF337255C),
         // Color(0xFFFA076F9),
          Color.fromARGB(255, 137, 90, 248),
          
        ]) */
        ),
        child: Column(children: [
          Stack(
            children: [
              InkWell(
                onTap: () {
                  print(currentIndex);
                },
                child: CarouselSlider(
                  items: imageList
                      .map(
                        (item) =>                      
                            ClipRRect(                             
                              borderRadius: const BorderRadius.all(Radius.circular(10)),
                              child: Image.asset(
                                item['image_path'],
                                fit: BoxFit.fill,
                                width: double.infinity,
                              ),
                            ),
                      )
                      .toList(),
                  carouselController: carouselController,
                  options: CarouselOptions(     
                    height: 151,         
                    enlargeCenterPage: true,
                    enlargeStrategy: CenterPageEnlargeStrategy.height,
                    scrollPhysics: const BouncingScrollPhysics(),
                    autoPlay: true,
                    aspectRatio: 1,
                    onPageChanged: (index, reason) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                  ),
                ),
              ),
              Padding(
                      padding: const EdgeInsets.only(top: 153),
                      child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: imageList.asMap().entries.map((entry) {
                                      return GestureDetector(
                      onTap: () => carouselController.animateToPage(entry.key),
                      child: Container(
                        width: currentIndex == entry.key ? 17 : 7,
                        height: 7.0,
                        margin: const EdgeInsets.symmetric(
                          horizontal: 3.0,
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: currentIndex == entry.key
                                ? Colors.deepPurple
                                : Colors.black.withOpacity(0.7)),
                      ),
                                      );
                                    }).toList(),
                                  ),
                    ),
            ],
            
          ),
          
        ]),
      ),
    );
  }
}
