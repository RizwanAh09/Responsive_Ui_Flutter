import 'package:flutter/material.dart';
import 'package:flutter_admin_panel/responsive.dart';
import 'package:flutter_admin_panel/src/features/admin_panel/controllers/menu_controller.dart';
import 'package:get/get.dart';
import '../dashboard/dashboard_screen.dart';
import 'components/side_menu.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);

  final menuController = Get.put(MenuController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: menuController.scaffoldKey,
      drawer: const SideMenu(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // this side menu is only for large screen
            if (Responsive.isDesktop(context))
              const Expanded(
                child: SideMenu(),
              ),
            const Expanded(
              flex: 5,
              child: DashboardScreen(),
            )
          ],
        ),
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile(
      {Key? key, required this.icon, required this.onTap, required this.title})
      : super(key: key);

  final String title;
  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      horizontalTitleGap: 0.0,
      leading: Icon(icon, size: 16, color: Colors.white54),
      title: Text(
        title,
        style: const TextStyle(color: Colors.white54, fontSize: 12),
      ),
    );
  }
}
