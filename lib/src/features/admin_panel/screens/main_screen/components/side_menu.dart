import 'package:flutter/material.dart';

import '../main_Screen.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const DrawerHeader(
              child: Icon(Icons.shop),
            ),
            DrawerListTile(
                icon: Icons.dashboard, onTap: () {}, title: "Dashboard"),
            DrawerListTile(
                icon: Icons.payment, onTap: () {}, title: "Transaction"),
            DrawerListTile(icon: Icons.task, onTap: () {}, title: "Task"),
            DrawerListTile(
                icon: Icons.document_scanner, onTap: () {}, title: "Documents"),
            DrawerListTile(icon: Icons.store, onTap: () {}, title: "Store"),
            DrawerListTile(
                icon: Icons.notifications,
                onTap: () {},
                title: "Notifications"),
            DrawerListTile(icon: Icons.person, onTap: () {}, title: "Profile"),
            DrawerListTile(
                icon: Icons.settings, onTap: () {}, title: "Setting"),
          ],
        ),
      ),
    );
  }
}
