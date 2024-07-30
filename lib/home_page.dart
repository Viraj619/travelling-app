

import 'package:flutter/material.dart';
import 'package:travelling/famous_description.dart';
import 'package:travelling/mapusa_page.dart';
import 'package:travelling/hotels_page.dart';
import 'package:travelling/resource_page.dart';

class HomePage extends StatelessWidget{
  TextEditingController sreachController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Traveler"))
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
          child: Stack(
            children: [
              /// search bar
              Padding(
                padding: const EdgeInsets.only(left: 10.0,top:20),
                child: Container(
                  width: 300,
                  height: 35,
                  decoration: BoxDecoration(
                    color: Colors.white54,
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  child:Row(
                    children: [
                      Icon(Icons.search),
                      /// search textfield
                      Container(
                        width: 250,
                        child: TextField(
                          controller:sreachController ,
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
              /// Container white
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: double.infinity,
                  height: 300,
                  decoration: BoxDecoration(
                    color: Colors.white54,
                    borderRadius: BorderRadius.horizontal(left: Radius.circular(20),right: Radius.circular(20))
                  ),
                ),
              ),
              /// listview of cities
              Positioned(
                bottom: 180,
                child: Padding(
                  padding: const EdgeInsets.only(left: 13.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Cities",style:mTextStyle16()),
                      Container(
                        width: 300,
                        height: 90,
                        //color: Colors.orangeAccent,

                        /// inhwell button for listview
                        child: ListView.builder(
                          itemCount: ResourcePage.gData.length,
                          scrollDirection: Axis.horizontal,
                            itemBuilder: (_,index){
                              return InkWell(
                                onTap: (){

                                  /// Nvigation
                                  Navigator.push(context, MaterialPageRoute(builder:(context)=>MapusaPage(mIndex: index) ));

                                },
                                child: Row(
                                  children: [
                                    Container(
                                      margin:EdgeInsets.only(left: 11),
                                      width: 80,
                                      height: 80,
                                      decoration: BoxDecoration(
                                          //color: Colors.purpleAccent,
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(color: Colors.black12,
                                        width: 4),
                                       image: DecorationImage(image:
                                       AssetImage(
                                         ResourcePage.gData[index]['imagecty'] ??'default '
                                       ),
                                         fit: BoxFit.cover
                                       ),
                                      ),
                                      child:Padding(
                                        padding: const EdgeInsets.only(top: 50.0,left: 10),
                                        child: Text(
                                          ResourcePage.gData[index]['city']
                                        ,style:mTextStyle16(mFontColor: Colors.white)),
                                      )
                                    )
                                  ],
                                ),
                              );
                            }),
                      )
                    ],
                  ),
                ),
              ),
              /// gridview for famous place
              Positioned(
                bottom: 6,
                child: Padding(
                  padding: const EdgeInsets.only(left: 13.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Famous places",style: mTextStyle16(),),
                      Container(
                        width: 300,
                        height: 140,
                        //color: Colors.orangeAccent,
                        child: GridView.builder(
                          itemCount: Famous.famData.length,
                            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 200,
                              mainAxisSpacing: 11,
                              crossAxisSpacing: 11,
                              childAspectRatio: 16/9
                            ), itemBuilder: (_,index){
                              return InkWell(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>FamousDescription(mIndex: index,)));
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: Colors.black12,
                                    width: 3),
                                    image: DecorationImage(
                                        image: AssetImage(
                                          Famous.famData[index]['mimage']
                                        ),
                                      fit: BoxFit.cover
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      Famous.famData[index]['place'],
                                      style: mTextStyle20(mFontColor: Colors.white),
                                    ),
                                  ),
                                ),
                              );
                        }),
                      )
                    ],
                  ),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}