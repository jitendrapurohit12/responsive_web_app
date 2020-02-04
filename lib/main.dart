import 'package:flutter/material.dart';
import 'package:responsive_web_app/ui/screens/screen_home.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Varela'),
      home: ScreenHome(),
    );
  }
}
