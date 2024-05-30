import "package:flutter/material.dart";
import "menu_list_tile.dart";

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.all(0),
        children: const <Widget>[
          UserAccountsDrawerHeader(
            currentAccountPicture: Icon(
              Icons.face,
              size: 80,
              color: Colors.white,
            ),
            accountName: Text("James Bruce"),
            accountEmail: Text("JamBr@gmail.com"),
            otherAccountsPictures: <Widget>[
              Icon(Icons.bookmark_border, color: Colors.white),
            ],
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/pp.jpg'), fit: BoxFit.cover),
            ),
          ),
          MenuListTileWidget()
        ],
      ),
    );
  }
}
