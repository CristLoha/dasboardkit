import 'package:dasboardkit/app/modules/home/views/home_view.dart';
import 'package:dasboardkit/app/modules/profile/views/profile_view.dart';
import 'package:dasboardkit/app/modules/settings/views/settings_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../rapports/views/rapports_view.dart';
import '../controllers/dasboard_controller.dart';

class DasboardView extends GetView<DasboardController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Obx(
            () => NavigationRail(
              extended: controller.isExpanded.isTrue,
              selectedIndex: controller.tabIndex.value,
              // labelType: controller.isExpanded.isFalse
              //     ? NavigationRailLabelType.selected
              //     : NavigationRailLabelType.none,
              backgroundColor: Color(0xff363740),
              indicatorColor: Colors.red,
              onDestinationSelected: controller.changeTabIndex,
              selectedIconTheme:
                  IconThemeData(color: Color(0xffDDE2FF), opacity: 1),
              selectedLabelTextStyle: TextStyle(color: Color(0xffDDE2FF)),
              unselectedIconTheme:
                  IconThemeData(color: Color.fromARGB(255, 110, 112, 125)),
              unselectedLabelTextStyle:
                  TextStyle(color: Color.fromARGB(255, 110, 112, 125)),
              destinations: [
                NavigationRailDestination(
                  label: Text('Home'),
                  icon: Icon(Icons.home),
                ),
                NavigationRailDestination(
                  label: Text('Rapports'),
                  icon: Icon(Icons.bar_chart),
                ),
                NavigationRailDestination(
                  label: Text('Profile'),
                  icon: Icon(Icons.person),
                ),
                NavigationRailDestination(
                  label: Text('Settings'),
                  icon: Icon(Icons.settings),
                ),
              ],
            ),
          ),
          Expanded(
            child: Obx(() => IndexedStack(
                  index: controller.tabIndex.value,
                  children: [
                    HomeView(),
                    RapportsView(),
                    ProfileView(),
                    SettingsView(),
                  ],
                )),
          )
        ],
      ),
    );
  }
}
