import 'package:flutter/material.dart';
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super (key: key);

  @override
  _SgnUpScreenState createState() => _SgnUpScreenState();
}

  class  _SgnUpScreenState extends State<SignUpScreen>{
  @override

  Widget build(BuildContext context){
      return Scaffold(      
        appBar: AppBar(
          title:  const Text("Sign Up Api"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [],
        ),
      );
    }
}

