import 'package:annie_ui_day13/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor:Colors.transparent),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
        primaryColor:Color(0xff01b2b8),
        accentColor: Color(0xfffed40a)
      ),
    );
  }
}
