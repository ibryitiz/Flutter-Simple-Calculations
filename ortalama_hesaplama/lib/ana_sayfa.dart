import 'package:flutter/material.dart';

class AnaSayfa extends StatefulWidget {

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  TextEditingController _kisa1Controller = TextEditingController();
  TextEditingController _kisa2Controller = TextEditingController();
  TextEditingController _odevController = TextEditingController();
  TextEditingController _vizeController = TextEditingController();
  TextEditingController _finalController = TextEditingController();

double _sonuc = 0;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          "Ortalama Hesapla",
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Ortalama:",
                style: TextStyle(
                    fontSize: 25
                ),
              ),
              Text(
                _sonuc.toString(),
                style: TextStyle(
                    color: Colors.teal,
                    fontSize: 35
                ),
              ),
              TextField(
                controller: _kisa1Controller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16)
                    ),
                  labelText: "Kısa Sınav 1",
                  contentPadding: EdgeInsets.all(20),
                  hintText: "%10"
                  ),
                ),
              TextField(
                controller: _kisa2Controller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16)
                  ),
                  labelText: "Kısa Sınav 2",
                  contentPadding: EdgeInsets.all(20),
                    hintText: "%10"
                ),
              ),
              TextField(
                controller: _odevController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16)
                  ),
                  labelText: "Ödev",
                  contentPadding: EdgeInsets.all(20),
                    hintText: "%10"
                ),
              ),
              TextField(
                controller: _vizeController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16)
                  ),
                  labelText: "Vize",
                  contentPadding: EdgeInsets.all(20),
                    hintText: "%20"
                ),
              ),
              TextField(
                controller: _finalController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16)
                  ),
                  labelText: "Final",
                  contentPadding: EdgeInsets.all(20),
                    hintText: "%50"
                ),
              ),
              ElevatedButton(
                  onPressed: _ortalamaHesapla,
                  child: Text(
                    "Hesapla"
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _ortalamaHesapla() {
    String kisa1text = _kisa1Controller.text.trim();
    String kisa2text = _kisa2Controller.text.trim();
    String odevtext = _odevController.text.trim();
    String vizetext = _vizeController.text.trim();
    String finaltext = _finalController.text.trim();
    try{
      double kisa1 = double.parse(kisa1text);
      double kisa2 = double.parse(kisa2text);
      double odev = double.parse(odevtext);
      double vize = double.parse(vizetext);
      double finall = double.parse(finaltext);
      setState(() {
        _sonuc = ((kisa1 * 10) + (kisa2 * 10) + (odev * 10) + (vize * 20) + (finall * 50))/100;
      });
    }catch(e){
      print("Bir hata oluştu. ${e.toString()}");
    }


  }
}
