import 'package:car_rental/constants.dart';
import 'package:car_rental/practice.dart';
import 'package:car_rental/screens/home_page.dart';
import 'package:flutter/material.dart';

import 'screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Car Rental System',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: kMainColor),
      home: HomePage(),
    );
  }
}
