
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:travelling/login_page.dart';
import 'package:travelling/sign_in.dart';

class SplashPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    /// timer
    Timer(Duration(seconds: 3),(){
      Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>LoginPage()));
    });
    return Scaffold(
      body: Center(
        child: Container(
          width: 330,
          height: 600,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.black12,
                width: 4),
                color: Colors.white
          ),
          child: Center(child: Image.asset("assert/image/ic_splash.jpg")),
        ),
      ),
    );
  }
}