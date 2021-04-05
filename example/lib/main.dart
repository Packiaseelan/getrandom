import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:getrandom/getrandom.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _randomNum = 0;

  @override
  void initState() {
    super.initState();
    initRandormState();
  }

  
  Future<void> initRandormState() async {
    int randomNum;
    try{
      randomNum = await Getrandom.getRandomNumber;
    } on PlatformException{
      randomNum = 0;
    }
    
    if (!mounted) return;

    setState(() {
      _randomNum = randomNum;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Random Number : $_randomNum\n'),
              ],
          ),
        ),
      ),
    );
  }
}
