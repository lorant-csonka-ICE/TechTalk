import 'package:flutter/material.dart';
import 'package:flutter_unity_widget_example/pages/home_page.dart';
import 'helper/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}