import "package:flutter/material.dart";
import 'package:uygulama_1/screens/finish.dart';


class AccountScreen extends StatefulWidget {
  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 10, left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              "asets/images/logo.png",
              height: 200,
              width: 200,
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
              child: Text(" Ad:",
                  style: TextStyle(
                    color: Color.fromARGB(136, 0, 0, 0),
                    fontSize: 18,
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
              child: Text("  SOYAD:",
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
              child: Text("  TEL.NO:",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(136, 0, 0, 0),
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
              child: Text("  MAİL:",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(136, 0, 0, 0),
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                  )),
            ),
            ElevatedButton(
              child: const Text('ÇIKIŞ YAP'),
              
              onPressed: (
                
     

              ) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FinishScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
