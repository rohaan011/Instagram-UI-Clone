import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/chatScreen.dart';
import 'package:instagram_clone/screens/homeScreen.dart';
import 'package:instagram_clone/screens/profileScreen.dart';
import 'package:instagram_clone/widgets/navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => Navbar(),
        '/home': (context) => Homescreen(),
        '/chat': (context) => Chatscreen(),
        '/profile': (context) => Profilescreen(),
      },
    );
  }
}
