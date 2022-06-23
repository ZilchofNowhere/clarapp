import 'package:flutter/material.dart';
import "package:clarapp/widgets/news_card.dart";

class News extends StatefulWidget {
  const News({Key? key}) : super(key: key);

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
  var titles = [
    "Bunu görünce çok şaşıracaksınız!",
    "Ünlü bilim adamı bakın ne yaptı!",
    "Ayyıldız Tim NASA'yı hackledi.",
    "Ünlü oyuncu sadece Clara TV ekranlarına röportaj verdi."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Clara"),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: ListView(
        children: [
          ...(titles.map((title) => NewsCard("assets/clara.jpeg", title))),
        ],
      ),
    );
  }
}
