import 'package:flutter/material.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {

String deger = "";
void onPressedFunc(String buttonText){
  setState(() {
    if (buttonText == "=") {
    try {
      var sayilar = deger.split("+");
      var toplam = 0;
      for (var i = 0; i < sayilar.length; i++) {
        toplam = toplam + int.parse(sayilar[i]);
      }
      deger = toplam.toString();
      } catch (e) {
        deger = "hata";
      }

  }else if(buttonText == "C"){
    deger = "";
  }else if(buttonText == "SİL"){
   if (deger.isNotEmpty) {
        deger = deger.substring(0, deger.length - 1);
      }
  }
  else {
    deger  = deger + buttonText;
  }
  });
}
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Spacer(),
                Text("Sonuç",style: TextStyle(color: Colors.black,fontSize: 24),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Spacer(),
                Text(
                  deger,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 60,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 250,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              myButton("C"),
              myButton("+"),
              myButton("SİL"),
            ],
          ),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              myButton("1"),
              myButton("2"),
              myButton("3"),
            ],
          ),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              myButton("4"),
              myButton("5"),
              myButton("6"),
            ],
          ),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              myButton("7"),
              myButton("8"),
              myButton("9"),
            ],
          ),
          myButton("="),
        ],
      ),
    );
  }
    Widget myButton(String buttonText){
    return ElevatedButton(onPressed: () => onPressedFunc(buttonText), child: Text(buttonText));
  }
}

