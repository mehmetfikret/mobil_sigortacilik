import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_sigorta/home/insurances/credit_Card/card_back.dart';
import 'package:flutter_sigorta/home/insurances/credit_Card/card_front.dart';
import 'package:flutter_sigorta/home/insurances/credit_Card/odeme_basarili.dart';


class MyCardsPage extends StatefulWidget {
  const MyCardsPage({super.key});

  @override
  _MyCardsPageState createState() => _MyCardsPageState();
}

class _MyCardsPageState extends State<MyCardsPage>
    with SingleTickerProviderStateMixin {
  //double _rotationFactor = 0;
  late AnimationController _flipAnimationController;
  late Animation<double> _flipAnimation;
  late TextEditingController _cardNumberController,
      _cardHolderNameController,
      _cardExpiryController,
      _cvvController;
  late FocusNode _cvvFocusNode;
  String _cardNumber = '';
  String _cardHolderName = '';
  String _cardExpiry = '';
  String _cvvNumber = '';

  _MyCardsPageState() {
    _cardNumberController = TextEditingController();
    _cardHolderNameController = TextEditingController();
    _cardExpiryController = TextEditingController();
    _cvvController = TextEditingController();
    _cvvFocusNode = FocusNode();

    _cardNumberController.addListener(onCardNumberChange);
    _cardHolderNameController.addListener(() {
      _cardHolderName = _cardHolderNameController.text;
      setState(() {});
    });
    _cardExpiryController.addListener(() {
      _cardExpiry = _cardExpiryController.text;
      setState(() {});
    });
    _cvvController.addListener(() {
      _cvvNumber = _cvvController.text;
      setState(() {});
    });

    _cvvFocusNode.addListener(() {
      _cvvFocusNode.hasFocus
          ? _flipAnimationController.forward()
          : _flipAnimationController.reverse();
    });
  }

  @override
  void initState() {
    super.initState();
    _flipAnimationController =
        AnimationController(vsync: this, duration: const Duration(milliseconds: 350));
    _flipAnimation =
        Tween<double>(begin: 0, end: 1).animate(_flipAnimationController)
          ..addListener(() {
            setState(() {});
          });
//    _flipAnimationController.forward();
  }

  void onCardNumberChange() {
    _cardNumber = _cardNumberController.text;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kart Bilgileri'),
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: <Widget>[
              Transform(
                transform: Matrix4.identity()
                  ..setEntry(3, 2, 0.001)
                  ..rotateY(math.pi * _flipAnimation.value),
                origin: Offset(MediaQuery.of(context).size.width / 2, 0),
                child: _flipAnimation.value < 0.5
                    ? CardFrontView(
                        cardNumber: _cardNumber,
                        cardHolderName: _cardHolderName,
                        cardExpiry: _cardExpiry,
                      )
                    : CardBackView(
                        cvvNumber: _cvvNumber, formattedCVVNumber: '',
                      ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.white,
                  padding: const EdgeInsets.all(16),
                  height: double.infinity,
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
      //                      Slider(
      //                        onChanged: (double value) {
      //                          setState(() {
      //                            _rotationFactor = value;
      //                          });
      //                        },
      //                        value: _rotationFactor,
      //                      ),
                        TextField(
                          keyboardType: TextInputType.number,
                          controller: _cardNumberController,
                          maxLength: 16,                       
                          decoration: const InputDecoration(
                            hintText: 'Kart Numarası',
                            icon: Icon(Icons.numbers),
                          ),
                        ),
                        TextField(
                          keyboardType: TextInputType.name,
                          controller: _cardHolderNameController,
                          decoration: const InputDecoration(
                            hintText: 'Kart Sahibi',
                            icon: Icon(Icons.person),
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              flex: 2,
                              child: TextField(
                                keyboardType: TextInputType.number,
                                controller: _cardExpiryController,
                                //maxLength: 4,
                                decoration: const InputDecoration(
                            hintText: 'Valid/THRU',
                            icon: Icon(Icons.date_range_outlined),                       
                          ),
                              ),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              flex: 1,
                              child: TextField(
                                keyboardType: TextInputType.number,
                                focusNode: _cvvFocusNode,
                                controller: _cvvController,
                                maxLength: 3,
                                decoration: const InputDecoration(
                                    counterText: '', hintText: 'CVV'),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 27,),
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
                                  builder: (context) => const OdemeBasarili(),
                                ),
                              );
                            },
                            
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(255, 105, 43, 118)),
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 12.0),
                              child: Text(
                                "Onayla ve Bitir",
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}