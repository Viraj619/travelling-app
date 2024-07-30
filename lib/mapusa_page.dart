

import 'package:flutter/material.dart';
import 'package:travelling/discription_page.dart';
import 'package:travelling/hotels_page.dart';
import 'package:travelling/resource_page.dart';

class MapusaPage extends StatelessWidget{
  int mIndex;

  MapusaPage({required this.mIndex});

  @override
  Widget build(BuildContext context) {

   return Scaffold(
     appBar: AppBar(
       title: Align(
         alignment: Alignment.center,
         child: Center(
           child: Container(
             child: Row(
               children: [
                 Container(
                   width: 50,
                   height: 50,
                   decoration: BoxDecoration(
                     shape: BoxShape.circle,
                     image: DecorationImage(
                         image: AssetImage(
                             ResourcePage.gData[mIndex]['imagecty']
                         ),
                       fit: BoxFit.cover,
                     )
                   ),
                   ),
                    Text(
                     ResourcePage.gData[mIndex]['city'],
                      style: mTextStyle20(),
                      //"city"
                   ),
               ],
             ),
           ),
         ),
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
         child: Stack(
           children: [
           Column(
             children: [
               /// search bar
               Padding(
                 padding: const EdgeInsets.only(left: 6.0,top:20),
                 child: Container(
                     width: 300,
                     height: 35,
                     decoration: BoxDecoration(
                         color: Colors.white,
                         borderRadius: BorderRadius.all(Radius.circular(10))
                     ),
                     child:Row(
                       children: [
                         Icon(Icons.search),
                         /// search textfield
                         Container(
                           width: 250,
                           child: TextField(
                             //controller:sreachController ,
                             decoration: InputDecoration(
                                 hintText: "Search..."
                             ),
                           ),
                         ),
                         Icon(Icons.mic),
                       ],
                     )
                 ),
               ),
                  SizedBox(height: 20,),

                  Padding(
                    padding: const EdgeInsets.only(left: 13.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                        child: Text("Places to Visit",style: mTextStyle16(),)),
                  ),

                  /// list view for places
                  Column(
                    children: [
                      Container(
                        height: 350,
                        child: ListView.builder(
                          itemCount: ResourcePage.gData.length,
                           itemBuilder: (_,index){
                             return  InkWell(
                               onTap: (){
                                 Navigator.push(context, MaterialPageRoute(builder: (context)=>DiscriptionPage(dIndex: mIndex,index: index,)));
                               },
                               child: Container(
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
                                           //color: Colors.white,
                                         borderRadius:BorderRadius.circular(10),
                                         border: Border.all(color: Colors.black12,
                                         width: 3),
                                         image: DecorationImage(
                                             image: AssetImage(
                                               ResourcePage.gData[mIndex]["mplace"]['mimage'][index] ?? "defaul"
                                             ),
                                           fit: BoxFit.cover
                                         )
                                       ),
                                     ),
                                     SizedBox(width: 5,),
                                     Text(
                                       ResourcePage.gData[mIndex]['mplace']['place'][index]  ?? "default",
                                       style: mTextStyle16(),
                                     ),
                                   ],
                                 ),
                               ),
                             );
                           }),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Container(
                          width:330 ,
                          height: 130,
                          color: Colors.white54,
                          child:  Text("Hotels in ${ ResourcePage.gData[mIndex]['city']}"
                            ,style: mTextStyle20(),),
                        ),
                      ),


                    ],
                  ),
             ],
           ),
             Align(
               alignment: Alignment.bottomCenter,
               child: Container(
                 height: 110,
                 //color: Colors.green,
                 child:InkWell(
                   onTap: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>HotelsPage(hIndex: mIndex,)));
                   },
                   child: ListView.builder(
                     itemCount: MCity.hotelData.length,
                     scrollDirection: Axis.horizontal,
                       itemBuilder:(_,index){
                     return Container(
                       margin: EdgeInsets.only(left: 11),
                       height: 50,
                       width: 200,
                       decoration: BoxDecoration(
                         image: DecorationImage(
                             image: AssetImage(
                               MCity.hotelData[mIndex]['hotel']['mimage'][index]
                             ),
                           fit: BoxFit.cover,
                         ),

                         borderRadius: BorderRadius.circular(20),
                         border: Border.all(color: Colors.black45,
                         width: 4)

                       ),
                       child: Padding(
                         padding: const EdgeInsets.only(top: 70.0),
                         child: Column(
                           children: [
                             Text(
                               MCity.hotelData[mIndex]['hotel']['name'] [index],
                               style: mTextStyle20(mFontColor: Colors.white),

                             ),
                           ],
                         ),
                       ),
                     );
                   }),
                 ) ,
               ),
             )
            ],
         ),
       ),
     ),
   );

  }
}