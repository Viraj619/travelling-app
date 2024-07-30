

import 'package:flutter/material.dart';
import 'package:travelling/resource_page.dart';

class DiscriptionPage extends StatelessWidget{
  int dIndex; int index;

  DiscriptionPage({required this.dIndex,required this .index});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child:Text("Description")
        ),
      ),
      body: Center(
        child: Container(
          width: 330,
          height: 600,
          decoration: BoxDecoration(
           color: Colors.green,
           image: DecorationImage(
            image:NetworkImage("https://images.pexels.com/photos/1586795/pexels-photo-1586795.jpeg?auto=compress&cs=tinysrgb&w=600"),
             fit:BoxFit.cover,
             ),
            borderRadius: BorderRadius.circular(20),

          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Container(
                  width: 310,
                  height: 250,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(50),

                     /// image
                   image: DecorationImage(
                       image: AssetImage(
                         ResourcePage.gData[dIndex] ["mplace"] ['mimage'][index]  ,
                       ),
                     fit: BoxFit.cover
                   ),
                   color: Colors.green


                 ),
                ),
                SizedBox(height: 30,),
                Container(
                  width: 320,
                  height: 250,
                  color: Colors.white,
                  child: Text(
                    ResourcePage.gData[dIndex]["mplace"]['place'][index],
                    style: mTextStyle16(mFontWeight: FontWeight.normal),
                    //MCity.ciData[dIndex]['place'],
                    textAlign: TextAlign.start,),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}