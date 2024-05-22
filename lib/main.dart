import 'package:flutter/material.dart';
import 'package:project1univ/pages/homepage.dart';
import 'package:project1univ/pages/login.dart';

String url = "http://10.0.2.2:8000/api";
String token = "";
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     routes: {
      Login.id :(context) => Login(),
      HomePage.id :(context) => HomePage(),
     
     },
     initialRoute: Login.id,
      
    );
  }
}