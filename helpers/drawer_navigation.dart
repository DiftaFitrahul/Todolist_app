import 'package:flutter/material.dart';
import 'package:todolist_app2/page/about_page.dart';
import 'package:todolist_app2/page/home_page.dart';

class DrawerNavigation extends StatefulWidget {
  @override
  _DrawerNavigationState createState() => _DrawerNavigationState();
}

class _DrawerNavigationState extends State<DrawerNavigation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage('images/images.png')),
              accountName: Text("Difta Fitrahul"),
              accountEmail: Text("diftafitrahul@gmail.com"),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              leading: Icon(Icons.home_filled),
              title: Text("Home"),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (builder) {
                  return HomePage();
                }));
              },
            ),
            ListTile(
              leading: Icon(Icons.info_outlined),
              title: Text("About"),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (builder) {
                  return AboutScreen();
                }));
              },
            ),
          ],
        ),
      ),
    );
  }
}
