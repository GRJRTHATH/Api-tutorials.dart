
import 'package:api_tutorials/example_four.dart';
import 'package:api_tutorials/example_three.dart';
import 'package:api_tutorials/home_screen.dart';
import 'package:api_tutorials/models/example_two.dart';
import 'package:api_tutorials/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SignUpScreen(),
    );
  }
}

