import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CardFrontView extends StatelessWidget {
  final String cardNumber;
  final String cardHolderName;
  final String cardExpiry;

  late String _formattedCardNumber;
  late String _formattedExpiryDate;

  CardFrontView(
      {super.key, required this.cardNumber, required this.cardHolderName, required this.cardExpiry}) {
    _formattedCardNumber = cardNumber.padRight(16, '*');
    _formattedCardNumber = _formattedCardNumber.replaceAllMapped(
        RegExp(r".{4}"), (match) => "${match.group(0)} ");

    _formattedExpiryDate =
        cardExpiry.replaceAllMapped(RegExp(r".{2}"), (match) => "${match.group(0)}/");
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      height: size.height * 0.42,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        elevation: 8,
        margin: const EdgeInsets.all(16),
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Align(
                  alignment: Alignment.topRight,
                  child: Image.asset('assets/images/visa.png')),
              const SizedBox(
                height: 32,
              ),
              Text(
                _formattedCardNumber,
                style: const TextStyle(
                  fontSize: 24,
                  fontFamily: 'Roboto',
                  letterSpacing: 2,
                  wordSpacing: 2,
                  fontWeight: FontWeight.w500,
                  shadows: [
                    Shadow(color: Colors.black12, offset: Offset(2, 1))
                  ],
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Text('Kart Sahibi'),
                        Text(
                          cardHolderName,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                              letterSpacing: 2,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text('Valid/\nTHRU'),
                      Text(
                        _formattedExpiryDate,
                        maxLines: 1,
                        style: const TextStyle(                            
                            letterSpacing: 2,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}