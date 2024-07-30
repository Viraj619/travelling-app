

import 'package:flutter/material.dart';
import 'package:travelling/home_page.dart';
import 'package:travelling/resource_page.dart';

class SignIn extends StatelessWidget{
  String name;
  SignIn({required this.name});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Container(
          width:330,
          height: 600,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage("https://images.pexels.com/photos/240526/pexels-photo-240526.jpeg?auto=compress&cs=tinysrgb&w=600"),
              fit: BoxFit.fill,
            ),
             // color: Colors.green,
            border: Border.all(color: Colors.black12,
            width: 1,
            strokeAlign: BorderSide.strokeAlignOutside),
            borderRadius: BorderRadius.all(Radius.circular(20))
          ),
          child: SizedBox(
            width: double.infinity,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0,top: 15),
                  child: Container(
                    width: 200,
                      child: Text("Enjoy the trip with me",textAlign: TextAlign.start,
                        style: mTextStyle30(mFontColor: Colors.white),)
                  ),
                ),

                 /// container with white background
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: double.infinity,
                    height: 400,
                    decoration: BoxDecoration(
                      color: Colors.white54,
                      borderRadius: BorderRadius.horizontal(left: Radius.circular(20),right: Radius.circular(20))
                    ),
                  ),
                ),
                ///
                Positioned(
                  bottom: 330,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Row(
                      children: [
                        /// userName
                        Container(
                          width: 200,
                          child: Text("Welcome  $name",
                            textAlign: TextAlign.start,style:mTextStyle20(),),
                        ),
                        SizedBox(width: 50,),
                        /// user profile picture
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                             image: DecorationImage(
                            image: NetworkImage("https://images.pexels.com/photos/1586795/pexels-photo-1586795.jpeg?auto=compress&cs=tinysrgb&w=600",),
                            fit: BoxFit.fill,
                            ),
                            shape: BoxShape.circle,
                            border: Border.all(color:Colors.black45)
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                /// password textfield
                Positioned(
                  bottom: 250,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Container(
                      width: 300,
                      child: TextField(
                        obscureText: true,
                        obscuringCharacter: "*",
                        decoration: InputDecoration(
                          labelText: "Password",
                          hintText: "Enter your Password"
                        ),
                      ),
                    ),
                  ),
                ),
                /// forgot password button
                Positioned(
                  bottom: 200,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 190.0),
                    child: Row(
                      children: [
                        TextButton(
                            onPressed: (){

                            }, child: Text("ForgotPassWord?",style: TextStyle(color: Colors.orange),))
                      ],
                    ),
                  ),
                ),
                /// sing button
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 120.0),
                    child: Container(
                      width: 250,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.orange,
                        border: Border.all(color: Colors.black12,
                        width: 3),
                        borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: TextButton(
                        onPressed: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomePage()));
                        },
                        child: Text("Sing in",style: TextStyle(color: Colors.white),),
                      ),
                    ),
                  ),
                ),
                /// option to sing in
                Positioned(
                  bottom: 90,
                    child: Padding(
                      padding: const EdgeInsets.only(left:125.0),
                      child: Text("Or sing with"),
                    )),
                /// logos
                Positioned(
                  bottom: 20,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 90.0),
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: (){

                            }, icon: Icon(Icons.g_mobiledata,size: 50,)
                        ),
                        IconButton(
                            onPressed: (){

                            }, icon: Icon(Icons.facebook,size: 40,))
                      ],
                    ),
                  ),
                )


              ],
            ),
          ),
        ),
      ),
    );

  }
}