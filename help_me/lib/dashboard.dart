import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:help_me/contacts/screens/contact_screen.dart';
import 'package:help_me/history/screens/history_screen.dart';
import 'package:help_me/home/screens/home_page.dart';
import 'package:help_me/resources/screens/resources_page.dart';
import 'package:help_me/settings/screens/settings_page.dart';

import 'controllers/navigation_controller.dart';

class DashboardPage extends StatelessWidget {
  DashboardPage({Key? key}) : super(key: key);

  final NavigationController navCon = Get.put(NavigationController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavigationController>(
      builder: (controller) {
        return Scaffold(
            body: SafeArea(
              child: IndexedStack(
                index: controller.tabIndex,
                children: const [
                  SettingsPage(),
                  ContactsPage(),
                  HomePage(),
                  HistoryPage(),
                  ResourcesPage()
                ],
              ),
            ),
            bottomNavigationBar: BottomNavigationBar(
              unselectedItemColor: Colors.black,
              selectedItemColor: Colors.redAccent,
              currentIndex: navCon.tabIndex,
              onTap: controller.changeTabIndex,
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.white,
              elevation: 0,
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.settings), label: 'Settings'),
                BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.phone), label: 'Contacts'),
                BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.home), label: 'Home'),
                BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.book), label: 'History'),
                BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.globe), label: 'Resources')
              ],
            ));
      },
    );
  }
}
