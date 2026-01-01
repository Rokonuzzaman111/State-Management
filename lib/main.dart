import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/Pages/home.dart';
import 'package:state_management/Provider/home_page_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers:[
        ChangeNotifierProvider<HomePageProvider>(create: (_)=> HomePageProvider() )


      ],
    
    
    
     child: MaterialApp(
      title: 'State Management',
      home: HomePage(),
  
      debugShowCheckedModeBanner: false,

    
    )
     );
  }
}

