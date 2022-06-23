import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  final String title;
  final String imagePath;
  const NewsCard(this.imagePath, this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 4,
      shadowColor: Colors.grey.shade800,
      margin: const EdgeInsets.all(8),
      color: Colors.grey.shade100,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imagePath, // png doesnt show up for some reason
            fit: BoxFit.scaleDown,
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4.0),
            child: Text(
              title,
              textAlign: TextAlign.left,
              style: const TextStyle(
                fontSize: 24,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
            child: TextButton(
              onPressed: () {
                print("Takes to the news article");
              },
              child: const Text(
                "Daha fazla",
              ),
            ),
          )
        ],
      ),
    );
  }
}
