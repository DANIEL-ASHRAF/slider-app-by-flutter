import 'package:flutter/material.dart';
import 'package:slider_app/slider_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Slider App',
      theme: ThemeData(
       primarySwatch: Colors.blue,
      ),
      home: SliderView(),
    );
  }
}
