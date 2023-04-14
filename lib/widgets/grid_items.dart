

import 'package:flutter/material.dart';
import 'package:uygulama_1/screens/item_screen.dart';
class GridItems extends StatefulWidget {
  @override
  State<GridItems> createState() => _GridItemsState();
}

class _GridItemsState extends State<GridItems> {
  var pNames = [
    "clock",
    "shoe",
     "tshirt",
    "phone",
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: pNames.length,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 0.7, crossAxisCount: 2),
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white10,
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 4,
                spreadRadius: 2,
              ),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.all(12),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "30% indirim",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                    Icon(Icons.favorite, color: Colors.redAccent),
                  ],
                ),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: InkWell(
                    onTap:(){
                      Navigator.push(context,MaterialPageRoute(builder:(context)=>ItemScreen()));
                    },
                    child: Image.asset(
                      "asets/images/${pNames[index]}.png",
                      height: 100,
                      width: 100,
                    ),
                  ),
                  
                ),

               SizedBox(height: 15),
               Padding(
              padding: EdgeInsets.all(8),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(pNames[index],
                  style:TextStyle(
                  fontSize: 17,
                  color: Colors.black.withOpacity(0.8),
                  fontWeight: FontWeight.bold,
                  ),
                
                  ),

SizedBox(height:10), 
  Row(
     children: [
          Text("\$100",
          style:TextStyle(
          fontSize:15,
          color: Colors.redAccent,
          fontWeight:FontWeight.w500,
           ),
  
  ),
SizedBox(width:5),

Text("\$130 off",
          style:TextStyle(
            decoration: TextDecoration.lineThrough,
          fontSize:13,
          color: Colors.black.withOpacity(0.4),
      
           ),
  
),
],
  ),
                ],
              ),

               ),


              ],
            ),
          ),
        );
      },
    );
  }
}
