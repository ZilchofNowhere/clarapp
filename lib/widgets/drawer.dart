import 'package:flutter/material.dart';

class CDrawer extends StatelessWidget {
  const CDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      semanticLabel: "Uygulama menüsü",
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Color.fromRGBO(255, 73, 72, .2),
            ),
            child: Container(
              alignment: Alignment.bottomLeft,
              child: const Text(
                "Örnek Kullanıcı",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 28,
                ),
              ),
            ), // username
          ),
          ListTile(
            leading: Icon(
              Icons.home,
              color: Theme.of(context).primaryColor,
            ),
            title: const Text("Ana sayfa"),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, "/news");
            },
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
              color: Theme.of(context).primaryColor,
            ),
            title: const Text("Ayarlar"),
            onTap: () {
              print("Navigate to settings page");
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}