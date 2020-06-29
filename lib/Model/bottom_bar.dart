import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Theme.of(context).primaryColor,
      items: _buildDarkThemedBottomBarItems(<Map>[
        {"icon": Icons.home, "title": "Home"},
        {"icon": Icons.explore, "title": "Explore"},
        {"icon": Icons.subscriptions, "title": "Subscriptions"},
        {"icon": Icons.email, "title": "Inbox"},
        {"icon": Icons.playlist_play, "title": "Library"}
      ])
    );
  }

  List<BottomNavigationBarItem> _buildDarkThemedBottomBarItems(List<Map> itemProps){
    var items = <BottomNavigationBarItem>[];

    itemProps.forEach((props) { 
      items.add(BottomNavigationBarItem(
        icon: Icon(
          props["icon"],
          color: Colors.grey,
        ),
        title: Text(props["title"], style: TextStyle(
          color: Colors.grey,
          fontSize: 10.0
        ))
      ));
    });

    return items;
  }
}
