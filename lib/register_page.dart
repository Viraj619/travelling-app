
import 'package:flutter/material.dart';
import 'package:travelling/resource_page.dart';
import 'package:travelling/sign_in.dart';

class RegisterPage extends StatelessWidget{
  TextEditingController username=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 330,
          height: 600,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black12,
                  width: 1,
                  strokeAlign: BorderSide.strokeAlignOutside),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            image: DecorationImage(
                image: NetworkImage("https://images.pexels.com/photos/240526/pexels-photo-240526.jpeg?auto=compress&cs=tinysrgb&w=600"),
              fit: BoxFit.cover
            )
          ),
          child: Stack(
            children: [
               Container(
                width: 200,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0,top: 10),
                  child: Text("Enjoy the trip with me",textAlign: TextAlign.start,style: mTextStyle30(mFontColor: Colors.white),),
                ),
              ),
              /// Container
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: double.infinity,
                  height: 400,
                  decoration: BoxDecoration(
                    color: Colors.white54,
                      borderRadius: BorderRadius.vertical(top: Radius.circular(60)),
                  ),
                ),
              ),
              Positioned(
                bottom: 320,
                child: Container(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Text("New",style: mTextStyle25(),),
                              Text("Account",style:mTextStyle25(),)
                            ],
                          ),
                          SizedBox(width: 120,),
                          Column(
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Colors.black45,
                                  width: 2,
                                    strokeAlign: BorderSide.strokeAlignOutside
                                  ),
                                  image: DecorationImage(
                                      image:NetworkImage("https://images.pexels.com/photos/868113/pexels-photo-868113.jpeg?auto=compress&cs=tinysrgb&w=600",),
                                  fit: BoxFit.cover
                                  ),
                                  shape: BoxShape.circle
                                ),
                              ),
                              Text("Upload picture")
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
              ),

              Positioned(
                bottom: 130,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Column(
                    children: [
                      Container(
                        width: 300,
                        child: TextField(
                          decoration: InputDecoration(
                              labelText: "Email",
                              hintText: "Enter your Email"
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        width: 300,
                        child: TextField(
                          controller: username,
                          decoration: InputDecoration(
                            labelText: "UserName",
                            hintText: "Enter your UserName "
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        width: 300,
                        child: TextField(
                          obscureText: true,
                          obscuringCharacter: "*",
                          decoration: InputDecoration(
                            labelText: "Password",
                            hintText: "Enter your password"
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(bottom: 20.0),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius:BorderRadius.circular(20),
                      border: Border.all(color: Colors.black12),
                    ),
                    child: TextButton(
                      onPressed: (){
                        var userName=username.text.toString();
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SignIn(name: userName,)));

                      },child: Text("Sign up",style: mTextStyle16(mFontWeight: FontWeight.normal,mFontColor: Colors.white),),
                    ),
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