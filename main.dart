import 'package:flutter/material.dart';

void main() {
  runApp(YemekApp());
}

class YemekApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: YemekSayfasi(),
    );
  }
}

class YemekSayfasi extends StatefulWidget {
  @override
  _YemekSayfasiState createState() => _YemekSayfasiState();
}

class _YemekSayfasiState extends State<YemekSayfasi> {
  int corbaSayac = 1;
  int yemekSayac = 1;
  int tatliSayac = 1;

  void incrementCounter(int category) {
    setState(() {
      switch (category) {
        case 1:
          corbaSayac--;
          if (corbaSayac == 0) {
            corbaSayac = 5;
          }
          break;
        case 2:
          yemekSayac--;
          if (yemekSayac == 0) {
            yemekSayac = 5;
          }
          break;
        case 3:
          tatliSayac--;
          if (tatliSayac == 0) {
            tatliSayac = 5;
          }
          break;
        default:
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("BUGÜN NE YESEM ?"),
      ),
      body: Center(
        child: Column(
          children: [
            InkWell(
              onTap: () {
                incrementCounter(1); // Çorba kategorisi
              },
              child: Column(
                children: [
                  Image.asset(
                    "images/corba_$corbaSayac.jpg",
                    height: 200,
                  ),
                  Text("Mercimek"),
                ],
              ),
            ),
            Divider(height: 5,),
            InkWell(
              onTap: () {
                incrementCounter(2); // Yemek kategorisi
              },
              child: Column(
                children: [
                  Image.asset(
                    "images/yemek_$yemekSayac.jpg",
                    height: 200,
                  ),
                  Text("YEMEK"),
                ],
              ),
            ),
            Divider(height: 5,),
            InkWell(
              onTap: () {
                incrementCounter(3); // Tatlı kategorisi
              },
              child: Column(
                children: [
                  Image.asset(
                    "images/tatli_$tatliSayac.jpg",
                    height: 200,
                  ),
                  Text("TATLI"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}