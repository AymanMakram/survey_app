import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:survey_app/homeScreen.dart';


void main (){
  runApp(MyApp());
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
}
class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      routes: {
        HomeScreen.routeName:(buildcontextcontext)=>HomeScreen()
      },
      initialRoute:HomeScreen.routeName ,
    );
  }
}
