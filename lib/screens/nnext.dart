import "package:flutter/material.dart";

import 'package:uygulama_1/screens/screens.dart';

class NnextScreen extends StatefulWidget {
  @override
  State<NnextScreen> createState() => _NnextScreenState();
}

class _NnextScreenState extends State<NnextScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 100, left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            Image.asset(
              "asets/images/shop.png",
              height: 200,
              width: 200,
            ),
            Container(
              child: Text("Şifreniz Başarıyla Sıfırlandı Hoşgeldiniz ...",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color.fromARGB(255, 33, 11, 93),
                    fontSize: 25,
                    fontStyle: FontStyle.italic,
                  )),
            ),
           
            SizedBox(
              width: 150,
              height: 30,
              child: ElevatedButton(
                  child: const Text("Devam"),
                  onPressed: () {
                  
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Screens()),
                    );
                  },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.pink,
                    ),
                  ),
            ),
          
          ],
        ),
      ),
    );
  }
}
