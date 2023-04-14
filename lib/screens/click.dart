import "package:flutter/material.dart";
import 'package:uygulama_1/screens/screens.dart';

import 'detail.dart';

class ClickScreen extends StatefulWidget {
  @override
  State<ClickScreen> createState() => _ClickScreenState();
}

class _ClickScreenState extends State<ClickScreen> {
  var pNames = [
    "HarryPotter",
    "NotreDame",
    "LaLune",
    "LittlePrince",
  ];
 

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Column(
          children: [
            Align(
              child: Text(
                "KİTAPLAR",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            SizedBox(height: 20),
            for (int i = 0; i < 4; i++)
              Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                padding: EdgeInsets.only(right: 10),
                height: 120,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 235, 235, 235),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Container(
                      height: 100,
                      width: MediaQuery.of(context).size.width / 5,
                      margin: EdgeInsets.only(left: 8),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.asset(
                        "asets/images/${pNames[i]}.png",
                        height: 80,
                        width: 80,

                      ),
                    ),
                 
    
                    Container(
                      child: Padding(
                        padding: EdgeInsets.only(left: 15, top: 20, bottom: 25),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              pNames[i],
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                         
                          ],
                        ),
                      ),
                    ),
                    Spacer(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                         ElevatedButton(
      
            child: const Text("Detay",
            textAlign: TextAlign.left,
            style:TextStyle(
              
              fontSize: 10,
            )
            ),
            onPressed: (){
                              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DetailScreen()),
                );
            },
     style: ElevatedButton.styleFrom(
    primary: Color.fromARGB(255, 109, 181, 28),
             
            ),


      ),
                        
                      ],
                    ),
                  ],
                ),
              ),
           
        
            Container(
        child:    
        
         
      ElevatedButton(
        
            child: const Text("Geri",
            
            style:TextStyle(
              
              fontSize: 20,
            )
            ),
            onPressed: (){
                              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Screens()),
                );
            },
     style: ElevatedButton.styleFrom(
    primary: Color.fromARGB(255, 109, 181, 28),
             
            ),


      ),
        )
     
            
          ],
        ),
      ),
    );
  }
}

  