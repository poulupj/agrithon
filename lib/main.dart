import 'package:flutter/material.dart';
import 'screens/BodyScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.brown,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BodyScreen(),
    );
  }
}



