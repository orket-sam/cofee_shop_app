import 'package:coffee_app/constants.dart';
import 'package:flutter/material.dart';

class CoffeeDetailsScreen extends StatelessWidget {
  const CoffeeDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff9f9f9),
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back_ios)),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                // Navigator.of(context).pop();
              },
              icon: Icon(Icons.favorite_outline))
        ],
        backgroundColor: Color(0xfff9f9f9),
        foregroundColor: Colors.black,
        title: Text('Detail'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            kSBox20V,
            SizedBox(
              height: 220,
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  'assets/1.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            kSBox20V,
            Text('Caffe Mocha')
          ],
        ),
      ),
    );
  }
}
