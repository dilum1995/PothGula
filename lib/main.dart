import 'package:flutter/material.dart';
import 'package:poth_gula/screens/home_screen.dart';

void main() => runApp(
  MaterialApp(
    title: 'PothGula',
    home: HomeScreen(),
  ),
);

ThemeData appTheme = ThemeData(
    primaryColor: Colors.blue
);