import 'package:flutter/material.dart';
import 'package:profile_screen_task/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: ProfileScreen(),
      debugShowCheckedModeBanner: false // to remove debug tag on top right corner
    );
  }

}


