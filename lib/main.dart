import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:phferreira/home/home_page.dart';

void main() {
  setUrlStrategy(PathUrlStrategy());

  runApp(
    MaterialApp(
      title: 'phferreira',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        scaffoldBackgroundColor: const Color(0xFFD1CDB2),
      ),
      home: const HomePage(),
    ),
  );
}
