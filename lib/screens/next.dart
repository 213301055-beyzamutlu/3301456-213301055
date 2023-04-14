import "package:flutter/material.dart";


import 'nnext.dart';
class NextScreen extends StatefulWidget {
  @override
  State<NextScreen> createState() => _NextScreenState();
}
var _controller = TextEditingController();
class _NextScreenState extends State<NextScreen> {
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
              "asets/images/password.png",
              height: 200,
              width: 200,
            ),
            Container(
              child: TextField(
                    controller: _controller,

                  decoration: InputDecoration(
                       hintText: 'Yeni Şifre Girin',
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
               Container(
              child: TextField(
                    controller: _controller,

                  decoration: InputDecoration(
                       hintText: 'Şifrenizi Tekrar',
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
               Container(
              child: TextField(
                    controller: _controller,

                  decoration: InputDecoration(
                       hintText: 'Kullanıcı Adı',
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
               Container(
              child: TextField(
                    controller: _controller,

                  decoration: InputDecoration(
                       hintText: 'Mail',
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

ElevatedButton(
  child:const Text("Devam"),
  onPressed:(){

Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>NnextScreen()),
                );

  }
   ) 



          ],
        )
        ,),



    );
  }
}