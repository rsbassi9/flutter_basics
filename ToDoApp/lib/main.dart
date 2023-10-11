// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// main is a function that runs when the app starts. Void means that the function doesn't return anything.
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Scaffold is a widget that wraps a single widget (white background by default)
      home: Scaffold(
        backgroundColor: Colors.deepPurple[100],
        appBar: AppBar(
          title: Text("My App"),
          backgroundColor: Colors.deepPurple,
          elevation: 0,
          leading: Icon(Icons.menu), // adds a button to the left of the app bar
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                    Icons.search)) // adds a button to the right of the app bar
          ],
        ),
        body: Center(
          child: Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(20)),
            // EdgeInsets.symmetric(horizontal: 25, vertical: 50), or EdgeInsets.only(left: 25, top: 50, right: 25, bottom: 50)
            padding: EdgeInsets.all(25),
            child: Icon(
              Icons.home,
              color: Colors.white,
              size: 64,
            ),
          ),
        ),
      ),
    );
  }
}
