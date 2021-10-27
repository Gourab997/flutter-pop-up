import 'package:flutter/material.dart';
import 'package:screen/counter_app.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterApp(),
    )
  );
}