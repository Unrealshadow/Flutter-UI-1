import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutteruichallenge1/second_screen.dart';
import 'package:flutteruichallenge1/third_screen.dart';
import 'first_screen.dart';

void main() {
  runApp(MaterialApp(
      home: FirstScreen(),
  ));
  SystemChrome.setEnabledSystemUIOverlays([]);

}
