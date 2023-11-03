import 'package:chat_gbt/othntcshin/home_page/sign%20in.dart';
import 'package:chat_gbt/othntcshin/welcome/page_welcome.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Welcome() ,
    );
  }
}

