import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Clara',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Clara"),
        ),
        body: const MainPage(),
      ),
    );
  }
}

/*
  todolist:
  splash screen
  uygulama tasarım
*/

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Clara'ya Hoş Geldiniz!",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30,
        ),
      )
    );
  }
}
