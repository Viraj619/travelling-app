

import 'package:flutter/material.dart';
import 'package:travelling/register_page.dart';
import 'package:travelling/resource_page.dart';
import 'package:travelling/sign_in.dart';

class LoginPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Center(
       child: Container(
         width: 330,
         height: 600,
         decoration: BoxDecoration(
           color: Colors.green,
           borderRadius: BorderRadius.circular(20),
           border: Border.all(color: Colors.black12,
           width: 4,
           strokeAlign: BorderSide.strokeAlignOutside
           ),
           image: DecorationImage(
               image: NetworkImage("https://images.pexels.com/photos/240526/pexels-photo-240526.jpeg?auto=compress&cs=tinysrgb&w=600"),
             fit: BoxFit.cover
           ),
         ),
         /// stack
         child: Stack(
           children: [
             //Image.network("https://images.pexels.com/photos/1586795/pexels-photo-1586795.jpeg?auto=compress&cs=tinysrgb&w=600",height:double.infinity,),//"https://images.pexels.com/photos/3601425/pexels-photo-3601425.jpeg?auto=compress&cs=tinysrgb&w=600")
             Align(
               alignment:Alignment.topLeft,
               child: Padding(
                 padding: const EdgeInsets.only(top: 100),
                 child: Container(
                     width: 200,
                     child: Text("Enjoy the trip with me",textAlign: TextAlign.start,style: mTextStyle30(mFontColor: Colors.white)
                     ),
               ),
               ),
             ),
       
             Padding(
               padding: const EdgeInsets.only(bottom: 40),
               child: Align(
                 alignment: Alignment.bottomRight,
                 child: Container(
                   width: 200,
                   height: 50,
                   decoration: BoxDecoration(
                       color: Colors.orangeAccent,
                       border: Border.all(color: Colors.black12,
                           width: 4),
                       borderRadius: BorderRadius.only(topLeft: Radius.circular(25),
                         bottomLeft: Radius.circular(25),)
                   ),
                   child: Center(
                     child: TextButton(
                         onPressed: (){
                           Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>RegisterPage()));
                         }, child:Text("Sign up",style:mTextStyle15(mFontWeigh: FontWeight.normal,mFontColor: Colors.white),)),
                   ),
                 ),
               ),
             ),
             Padding(
               padding: const EdgeInsets.only(bottom: 100.0),
               child: Align(
                 alignment: Alignment.bottomRight,
                 child: Container(
                   width: 200,
                   height: 50,
                   decoration: BoxDecoration(
                       color: Colors.white,
                       border: Border.all(color: Colors.orange,
                           width: 4),
                       borderRadius: BorderRadius.only(topLeft: Radius.circular(25),
                         bottomLeft: Radius.circular(25),)
                   ),
                   child: Center(child: TextButton(
                       onPressed: (){
                         Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SignIn(name: "",)));
                       }, child:Text("Sign in",style:mTextStyle15(mFontColor: Colors.orange,mFontWeigh: FontWeight.normal),)),
                   ),
                 ),
               ),
             ),
           ],
         ),
         ),
     ),
   );

  }
}