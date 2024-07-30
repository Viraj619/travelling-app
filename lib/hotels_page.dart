

import 'package:flutter/material.dart';
import 'package:travelling/resource_page.dart';

class HotelsPage extends StatelessWidget{

   int hIndex;
  HotelsPage({required this.hIndex});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          width: 300,
          height: 50,
          child: Row(
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color:Colors.green,
                  image: DecorationImage(
                      image: AssetImage(
                          ResourcePage.gData[hIndex]['imagecty']
                        //MCity.hotelData[hIndex] ['hotel']['mimage'][hIndex]
                      )),
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.black45,
                  width: 2)
                ),
              ),
              Text(
                ResourcePage.gData[hIndex]['city'],
                //ResourcePage.gData[mIndex]['city'],
               // MCity.hotelData[hIndex] ['hotel']['name'][hIndex],
              style: mTextStyle16(),)
            ],
          )
          // Text("Totels"),
        ),
      ),
body: Center(
  child: Container(
          width: 330,
          height: 600,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      image: DecorationImage(
        image:NetworkImage("https://images.pexels.com/photos/1586795/pexels-photo-1586795.jpeg?auto=compress&cs=tinysrgb&w=600"),
        fit:BoxFit.cover,
         ),
         ),
         // color: Colors.green,
         child: Stack(
           children: [
             Column(
               children: [
                 Padding(
                   padding: const EdgeInsets.only(left: 10.0,top: 25),
                   child: Container(
                     width: 300,
                     height: 35,
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children: [
                         Icon(Icons.search),
                         Container(
                           width: 250,

                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(20),
                             color: Colors.white,
                           ),
                           child: TextField(
                             decoration: InputDecoration(
                               hintText: "Find the  Hotels....."
                             ),
                           ),
                         ),
                         Icon(Icons.mic)
                       ],
                     ),
                   ),
                 ),
                 Container(
                   width: double.infinity,
                   height: 500,
                   child:
                   ListView.builder(
                       itemBuilder: (_,index){
                         return Container(
                           height: 80,
                           margin:EdgeInsets.all( 11) ,
                           decoration: BoxDecoration(
                             color: Colors.orangeAccent,
                             borderRadius: BorderRadius.circular(10),
                             border: Border.all(color: Colors.black12,
                                 width: 3),
                           ),
                          child: Row(
                             children: [
                               Container(
                                 width: 100,
                                 height: 100,
                                 decoration: BoxDecoration(
                                   image:DecorationImage(
                                     image: AssetImage(
                                         MCity.hotelData[hIndex]['hotel']['mimage'][index]
                                     ),
                                     fit: BoxFit.cover,
                                   ),
                                   borderRadius: BorderRadius.circular(20),
                                   border: Border.all(color: Colors.black45,
                                   width: 3),
                                 ),
                               ),
                               SizedBox(width: 30,),
                               Padding(
                                 padding: const EdgeInsets.only(top:15.0),
                                 child: Column(
                                   children: [
                                     Text( MCity.hotelData[hIndex]['hotel']['name'][index],
                                     style: mTextStyle13(mFontWeigh: FontWeight.normal),),
                                     Text("price:${MCity.hotelData[hIndex]['hotel']['price'][index]}",style: mTextStyle13(mFontWeigh: FontWeight.normal),)

                                   ],
                                 ),
                               )
                             ],
                           )
                         );
                       }),

                 )

               ],
             )

           ],
         ),
        ),
),
    );

  }

}