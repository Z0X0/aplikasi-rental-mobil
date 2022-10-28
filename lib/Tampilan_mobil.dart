import 'package:flutter/material.dart';
import 'package:indocars/Mobil.dart';

class Tampilanmobil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("Rental Mobil"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
          ),
          Text(
            'Daftar Mobil',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: MobilTs(),
          ),
        ],
      ),
    );
  }
}
