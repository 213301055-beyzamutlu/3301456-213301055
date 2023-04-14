import "package:flutter/material.dart";
import 'dart:io';

class FinishScreen extends StatefulWidget {
  @override
  State<FinishScreen> createState() => _FinishScreenState();
}

class _FinishScreenState extends State<FinishScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              "asets/images/shop.png",
              height: 200,
              width: 200,
            ),
            Container(
              child: Text("Bizi Tercih Ettiğiniz İçin Teşekkür Ederiz...",
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    color: Color.fromARGB(255, 33, 11, 93),
                    fontSize: 25,
                    fontStyle: FontStyle.italic,
                  )),
            ),
            FloatingActionButton(
              onPressed: () => exit(0),
              tooltip: 'Close app',
              child: new Icon(Icons.close_sharp),
            ),
          ],
        ),
      ),
    );
  }
}
