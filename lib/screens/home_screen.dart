import 'package:flutter/material.dart';
import 'package:uygulama_1/screens/click.dart';
import 'package:uygulama_1/screens/start.dart';
import 'package:uygulama_1/screens/whish.dart';
import 'package:uygulama_1/widgets/grid_items.dart';

import 'account.dart';
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Color> Clrs = [
      
      Color.fromARGB(255, 36, 131, 233),
      Color.fromARGB(255, 246, 11, 58),
      Color.fromARGB(255, 36, 131, 143),
    ];
    var imageList = [
      "asets/images/shoppingcar.png",
      "asets/images/shoppingbag.png",
      "asets/images/sale.png",
    ];
    var iconImageList = [
      "asets/images/man.png",
      "asets/images/clock.png",
      "asets/images/man.png",
      "asets/images/mic.png",
      "asets/images/phone.png",
      "asets/images/shoe.png",
      "asets/images/sale.png",
    ];

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
              
      ElevatedButton(
        
              child: const Text('Sepete Git'),
              
              onPressed: (
                
     

              ) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WhishScreen()),
                );
              },
            ),
            
            ElevatedButton(
              
              child: const Text('Kullanıcı Girişi'),
              
              onPressed: (
                
     

              ) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StartScreen()),
                );
              },
            ),
            ElevatedButton(
              
              child: const Text('Hesabım'),
              
              onPressed: (
                
     

              ) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AccountScreen()),
                );
              },
            ),
          Padding(
            padding: EdgeInsets.only(top: 20, left: 15, right: 15),
            child: Row(
              
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 4,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  //child: Icon(CupertinoIcons.cart, size: 28),
                ),
                
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 4,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                 // child: Icon(CupertinoIcons.search, size: 28),
                ),
              ],
            ),
          ),
          Padding(
              padding: EdgeInsets.symmetric(vertical:5, horizontal: 100),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "İyi Günler , Beyza",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text("Bir şeylere göz atalım",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black45,
                      ))
                ],
              )),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 15),
            child: Row(
              children: [
                for (int i = 0; i < 3;i++)
                  Container(
                      margin: EdgeInsets.only(right: 10),
                      padding: EdgeInsets.only(left: 10),
                      width: MediaQuery.of(context).size.width / 1.5,
                      height: MediaQuery.of(context).size.height / 5.5,
                      decoration: BoxDecoration(
                      color: Clrs[i],

                   borderRadius:BorderRadius.circular(10),
                      ),
                  child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
Expanded(
  child:Column (
   mainAxisAlignment:MainAxisAlignment.spaceEvenly,
   crossAxisAlignment:CrossAxisAlignment.start,
   
   children: [
Text(
  "Kış Koleksiyonu %30 indirim ",

style:TextStyle(

color:Colors.white,
fontSize: 22,

),

),

 ElevatedButton(
              
              child: const Text('Gözat'),
              
              onPressed: (
                
     

              ) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ClickScreen()),
                );
              },
            ),
                                      ],
                                  ),
  
                                ),
                                
Image.asset(
  imageList[i],
  height: 50,
  width: 60,

),
                               
                            ],
                        )
                   ),    
                              
              ],
            ),
         ),
SizedBox(height:20),
Padding(
  padding: EdgeInsets.symmetric(horizontal:15),
  child:Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
children:[
  Text(
"Öne Çıkanlar",
style:TextStyle(
  fontWeight:FontWeight.bold,
  fontSize:19,

)


  ),
  Text(


    "hepsini gör",
    style:TextStyle(
color:Colors.black54,
  
  ),
  ),
],
  ),
  ),
SizedBox(height:20),
SingleChildScrollView(

scrollDirection: Axis.horizontal,
child:Row(
children:[
for(var i=0;i<7 ;i++)
Container(
  height: 50,
  width:50,
margin: EdgeInsets.all(8),
decoration: BoxDecoration(
  color:Colors.white30,
  borderRadius: BorderRadius.circular(10),
  boxShadow: [
    BoxShadow (
    color:Colors.black26,
    blurRadius: 4,
    spreadRadius: 2,




                                   ),
                                 ],
                              ),
                 child:Padding(
             padding:EdgeInsets.all(6),
             child:Image.asset(iconImageList[i]),


                 ),
                        
                            ),

                       ],
                  ),

            ),
    SizedBox(height:10),
     GridItems(),



        ],
      ),
    );
  }
}
