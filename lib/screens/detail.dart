import "package:flutter/material.dart";

import 'package:uygulama_1/screens/screens.dart';

class DetailScreen extends StatefulWidget {
  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              "asets/images/HarryPotter.png",
              height: 250,
              width: 250,
            ),
            Container(
              child: Text("Harry Potter",
                  style: TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                  )),
            ),
            Container(
              height: 30,
              width: 400,
              margin: EdgeInsets.only(left: 10, top: 20, right: 10),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 198, 211, 234),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 4,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Text(
                  "  Fiyat:                                                       55 TL ",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(136, 0, 0, 0),
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                  )),
            ),
            Container(
              height: 30,
              width: 400,
              margin: EdgeInsets.only(left: 10, top: 20, right: 10),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 198, 211, 234),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 4,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Text(
                  " Sayfa Sayısı :                                    150 sayfa",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(136, 0, 0, 0),
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                  )),
            ),
            Container(
              height: 30,
              width: 400,
              margin: EdgeInsets.only(left: 10, top: 20, right: 10),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 198, 211, 234),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 4,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Text(
                  "  Baskı:                                             11.Baskı ",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(136, 0, 0, 0),
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                  )),
            ),
            Container(
              height: 30,
              width: 400,
              margin: EdgeInsets.only(left: 10, top: 20, right: 10),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 198, 211, 234),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 4,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Text(
                  " Hamur:                                             1.Hamur ",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(136, 0, 0, 0),
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                  )),
            ),
            ElevatedButton(
              child: const Text('Ana Sayfaya Dön',
                  style: TextStyle(fontStyle: FontStyle.italic)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Screens()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
