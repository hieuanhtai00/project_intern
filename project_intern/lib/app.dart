import 'package:flutter/material.dart';
import 'package:project_intern/presenter/widgets/splash/splash_screen.dart';
import 'package:project_intern/routes.dart';

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Routes(),
    );
  }
}
