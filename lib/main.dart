
import 'package:flutter/material.dart';
import 'package:travelling/discription_page.dart';
import 'package:travelling/famous_description.dart';
import 'package:travelling/home_page.dart';
import 'package:travelling/hotels_page.dart';
import 'package:travelling/login_page.dart';
import 'package:travelling/mapusa_page.dart';
import 'package:travelling/register_page.dart';
import 'package:travelling/sign_in.dart';
import 'package:travelling/splash_page.dart';

void main(){
  runApp(MainApp());
}
class MainApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashPage(),
    );
  }
}