import 'package:flutter/material.dart';
import 'package:phferreira/home/home_page.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'phferreira',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const HomePage(),
    ),
  );
}
