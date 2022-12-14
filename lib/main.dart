import 'package:flutter/material.dart';
import 'package:ticket/screens/bottom_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ticket',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BottomBar(),
    );
  }
}
