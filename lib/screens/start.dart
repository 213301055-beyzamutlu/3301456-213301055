import "package:flutter/material.dart";

import 'package:uygulama_1/screens/next.dart';
import 'package:uygulama_1/screens/screens.dart';

class StartScreen extends StatefulWidget {
  @override
  State<StartScreen> createState() => _StartScreenState();
}
var _controller = TextEditingController();
class _StartScreenState extends State<StartScreen> {
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
              "asets/images/logo3.png",
              height: 150,
              width: 150,
            ),
            Container(
             child: TextField(

controller: _controller,


decoration: InputDecoration(
                       hintText: 'Email',
    suffixIcon: IconButton(
      onPressed: _controller.clear,
      icon: Icon(Icons.clear),
    ),
                    border: 
                    OutlineInputBorder(
                      borderSide: BorderSide(width: 10),
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(25.0),
                      ),
                    ),
                    prefixIcon: Align(
                      widthFactor: 1.0,
                      heightFactor: 1.0,
                      child: Icon(
                        Icons.person,
                      ),
                    ),
                  ),



              ),





           
            
            ),
 Container(

             child: TextField(

controller: _controller,


decoration: InputDecoration(
                       hintText: 'Şifre',
    suffixIcon: IconButton(
      onPressed: _controller.clear,
      icon: Icon(Icons.clear),
    ),
                    border: 
                    
                    OutlineInputBorder(
                      borderSide: BorderSide(width: 10),
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(25.0),
                      ),
                    ),
                    prefixIcon: Align(
                      widthFactor: 1.0,
                      heightFactor: 1.0,
                      child: Icon(
                        Icons.password,
                      ),
                    ),
                  ),



              ),





           
            
            ),

ElevatedButton(
              child: const Text('Giriş Yap',
              style:TextStyle(
                fontStyle: FontStyle.italic
              )
              
              
              ),
              
              onPressed: (
                
     

              ) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Screens()),
                );
              },
            ),


ElevatedButton(
              child: const Text('Şifremi Unuttum',
              style:TextStyle(
                fontStyle: FontStyle.italic
              )
              
              
              ),
              
              onPressed: (
                
     

              ) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NextScreen()),
                );
              },
            ),






















          ],
        )
        ,),



    );
  }
}
