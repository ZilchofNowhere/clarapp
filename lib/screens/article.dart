import 'package:clarapp/widgets/drawer.dart';
import "package:flutter/material.dart";

class Article extends StatelessWidget {
  final String title;
  final String body;
  final String? image;
  final String author;
  final String date;
  const Article(
      {Key? key,
      required this.title,
      required this.body,
      this.image,
      required this.author,
      required this.date})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Clara"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: [
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 36,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            "$date tarihinde $author yazdı.",
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
          image != null
              ? Container(
                  alignment: Alignment.center,
                  child: Image.asset(image!),
                )
              : const SizedBox(height: 0),
          Text(
            body,
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
