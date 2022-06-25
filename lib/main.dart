import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import "./screens/login_screen.dart";
import './screens/news.dart';
import "./screens/article.dart";

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
        primarySwatch: const MaterialColor(0xffff4948, {
          50: Color.fromRGBO(255, 73, 72, .1),
          100: Color.fromRGBO(255, 73, 72, .2),
          200: Color.fromRGBO(255, 73, 72, .3),
          300: Color.fromRGBO(255, 73, 72, .4),
          400: Color.fromRGBO(255, 73, 72, .5),
          500: Color.fromRGBO(255, 73, 72, .6),
          600: Color.fromRGBO(255, 73, 72, .7),
          700: Color.fromRGBO(255, 73, 72, .8),
          800: Color.fromRGBO(255, 73, 72, .9),
          900: Color.fromRGBO(255, 73, 72, 1),
        }),
      ),
      home: const LoginScreen(),
      /*
      home: const Article(
        title: "Crazy Ones",
        image: "assets/clara.jpeg",
        author: "Steve Jobs",
        date: "28 Haziran 1997",
        body: "Here’s to the crazy ones, the misfits, the rebels, the troublemakers, "
        "the round pegs in the square holes… the ones who see things differently — "
        "they’re not fond of rules… You can quote them, disagree with them, glorify "
        "or vilify them, but the only thing you can’t do is ignore them because they "
        "change things… they push the human race forward, and while some may see them "
        "as the crazy ones, we see genius, because the ones who are crazy enough to "
        "think that they can change the world, are the ones who do.",
      ),
      */
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
    return Scaffold(
      appBar: AppBar(
        title: const Text("Clara"),
      ),
      body: const Center(
        child: Text(
          "Clara'ya Hoş Geldiniz!",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
