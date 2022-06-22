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
        primaryColor: const Color.fromRGBO(255, 73, 72, 1),
        primarySwatch: const MaterialColor(0xffff4948, {0: Color.fromRGBO(255, 73, 72, 1)}),
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
          color: Colors.red,
        ),
      )
    );
  }
}
