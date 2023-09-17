import 'package:flutter/material.dart';
import './ui/movielist.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'movie world',
      theme: ThemeData(primaryColor: Colors.blue),
      home: MovieList(),
    );
  }
}
