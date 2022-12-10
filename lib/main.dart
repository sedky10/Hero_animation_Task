import 'package:flutter/material.dart';
import 'package:untitled1/animation.dart';
import 'package:untitled1/second.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double ops = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Hero(
              tag: 'tag',
              child: FlutterLogo(
                size: 250,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Second()));
            },
            child: Text('Change'),
          ),
        ],
      ),
    );
  }
}
/*
 Center(
        child: MaterialButton(
          onPressed: () {
            Navigator.push(
              context,
              SlidrRight(
                page: Second(),
              ),
            );
          },
          child: Text('go to page 2'),
        ),
      )
 */
