import 'package:flutter/material.dart';
import 'package:tasarimdeneme/Pages/Home.dart';
import 'package:tasarimdeneme/navbar.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

        title: 'uygulama demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(

            primarySwatch: Colors.red
        ),

        home: Pagemain()
    );


  }
}