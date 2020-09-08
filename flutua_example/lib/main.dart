import 'package:flutter/material.dart';
import 'package:flutua_example/about_ud.dart';
import 'package:flutua_example/course_screen.dart';
import 'package:flutua_example/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutura',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      routes: {
        '/':(_) => Homescreen(),
        AboutUsScreen.routeName:(_) => AboutUsScreen(),
        CourseScreen.routeName:(_) => CourseScreen(),
      },
    );
  }
}
