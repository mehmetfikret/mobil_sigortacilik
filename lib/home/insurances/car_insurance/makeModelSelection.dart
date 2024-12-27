import 'package:flutter/material.dart';

class MakeModelSelectionScreen extends StatelessWidget {
  final List<String> makeModelOptions = [
    'Honda Accord',
    'Toyota Corolla',
    'Ford Mustang',
    'Volkswagen Golf',
    'BMW 3 Series',
    'Mercedes-Benz S-Class',
    'Audi A4',
    'Nissan Altima',
    'Chevrolet Malibu',
    'Hyundai Elantra',
    'Citroen C-Elyses'
  ];

   MakeModelSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Marka/Model Seç'),
      ),
      body: ListView.builder(
        itemCount: makeModelOptions.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(makeModelOptions[index]),
                const Divider(),
              ],
            ),
            onTap: () {
              Navigator.pop(context, makeModelOptions[index]);
            },
          );
        },
      ),
    );
  }
}
