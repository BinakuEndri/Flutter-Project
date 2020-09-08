import 'package:flutter/material.dart';
import 'package:flutua_example/main_scaffold.dart';

class CourseScreen extends StatelessWidget {
  static const routeName = '/course';
  @override
  Widget build(BuildContext context) {
    return MainScaffold('Kurset','https://flutura-academy.com/kurset');
  }
}
