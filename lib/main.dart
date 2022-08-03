import 'package:aphasia/screens/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Aphasia',
        theme: ThemeData(
          primarySwatch: Colors.grey,
        ),
        home: const HomePage());
  }
}
