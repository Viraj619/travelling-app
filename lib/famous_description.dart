

import 'package:flutter/material.dart';
import 'package:travelling/resource_page.dart';

class FamousDescription extends StatelessWidget{
  int mIndex;
  FamousDescription({required this.mIndex});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child:Text("Description of Famous place"),
        ),
      ),
      body: Center(
        child: Container(
          width: 330,
          height: 600,
          decoration:BoxDecoration(
              color: Colors.green,
              image: DecorationImage(
                image:NetworkImage("https://images.pexels.com/photos/1586795/pexels-photo-1586795.jpeg?auto=compress&cs=tinysrgb&w=600"),
                fit:BoxFit.cover,
              ),
              border: Border.all(color: Colors.black12,
                  width: 4,
                  strokeAlign: BorderSide.strokeAlignOutside),
              borderRadius: BorderRadius.circular(20)
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Container(
                  width: 310,
                  height: 250,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(image: AssetImage(
                        Famous.famData[mIndex]['mimage']
                    ),
                      fit: BoxFit.cover
                    )
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  width: 320,
                  height: 250,
                  color: Colors.white,
                  child: Text(Famous.famData[mIndex]['place'],style: mTextStyle16(mFontWeight: FontWeight.normal),textAlign: TextAlign.start,),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}