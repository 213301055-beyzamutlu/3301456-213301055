


import 'package:flutter/gestures.dart';
import "package:flutter/material.dart";



class WhishScreen extends StatefulWidget {
  @override
  State<WhishScreen> createState() => _WhishScreenState();
}
var _controller = TextEditingController();
class _WhishScreenState extends State<WhishScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 10, left: 2, right: 20),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset(
                  "asets/images/logo2.png",
                  height: 200,
                  width: 200,
                ),
              ),
              Text(
                " Şikayet ve Önerileriniz",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, top: 80, right: 10),
                child: TextField(
                    controller: _controller,

                  decoration: InputDecoration(
                       hintText: 'Enter a message',
    suffixIcon: IconButton(
      onPressed: _controller.clear,
      icon: Icon(Icons.clear),
    ),
                    border: 
                    OutlineInputBorder(
                      borderSide: BorderSide(width: 2),
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(30.0),
                      ),
                    ),
                    prefixIcon: Align(
                      widthFactor: 1.0,
                      heightFactor: 1.0,
                      child: Icon(
                        Icons.info_outline_rounded,
                      ),
                    ),
                  ),
                    
                ),
              ),
              
              ButtonBar(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ElevatedButton(
                    child: Text('Gönder',
                    style: TextStyle(    
                    ),
                    ),
                     
                    onPressed: () {
                     
                    },
                  ),
                 ElevatedButton(
        
              child: const Text('Canlı Destek'),
              
              onPressed: (
                
     

              ) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WhishScreen()),
                );
              },
            )
                ],
                
              ),
              Container(
                margin: EdgeInsets.only(left: 165, top: 60, right: 10),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Image.asset(
                    "asets/images/insta.png",
                    height: 60,
                    width: 60,
                  ),
                ),
              ),
               
              Text.rich(TextSpan(
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  children: [
                    TextSpan(
                        style: TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline),
                        //make link blue and underline
                        text: "Instagram Hesabı",
                        recognizer: TapGestureRecognizer()
                          ..onTap = () async {
                            //on tap code here, you can navigate to other page or URL
                          }),

                    //more text paragraph, sentences here.
                  ])),
                 
            ]),
      ),
    );
  }
}
