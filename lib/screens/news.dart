// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class News extends StatefulWidget {
  const News({Key? key}) : super(key: key);

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Clara"),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Column(
        children: [
          Card(
            margin: const EdgeInsets.all(5),
            child: Center(
              child: Column(children: [
                Image.asset("assets/clara.jpeg"),
                
                Text("Lorem ipsum dolor sit amet."),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}