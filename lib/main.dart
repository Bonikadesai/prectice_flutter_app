import 'package:dummy_plant/moduls/Home_Screen/Views/home_Screen.dart';
import 'package:dummy_plant/moduls/SignUp_Screen/Views/signup_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: SignUp_Screen(),
      routes: {
        'homepage': (context) => Home_Screen(),
      },
    ),
  );
}
