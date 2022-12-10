import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/main.dart';

class Second extends StatefulWidget {
  const Second({Key? key}) : super(key: key);

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Hero(
            tag: 'tag',
            child: FlutterLogo(
              size: 250,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyHomePage()));
            },
            child: Text('Change'),
          ),
        ],
      ),
    );
  }
}
