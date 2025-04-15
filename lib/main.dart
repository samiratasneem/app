import 'package:app/screen/welcom_screen.dart';
import 'package:flutter/material.dart';

void main()=> runApp(MyApp());
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(255, 211, 221, 230),
      ),

      home: WelcomeScreen(),
    );
  }
}