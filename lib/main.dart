import 'package:flutter/material.dart';
import 'package:tirasol_loginform1/loginform.dart';


void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.cyan
    ),
    title: 'Login Form',
    home: LoginForm(),
  ));
}