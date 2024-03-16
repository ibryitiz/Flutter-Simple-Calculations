import 'package:flutter/material.dart';
import 'package:ortalama_hesaplama/ana_sayfa.dart';

void main() {
  runApp( OrtalamaHesapla());
}

class OrtalamaHesapla extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnaSayfa(),
    );
  }
}
