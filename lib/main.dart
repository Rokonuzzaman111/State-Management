import 'package:flutter/material.dart';
import 'package:state_management/Pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'State Management',
      home: HomePage(),
  
      debugShowCheckedModeBanner: false,

    
    );
  }
}

