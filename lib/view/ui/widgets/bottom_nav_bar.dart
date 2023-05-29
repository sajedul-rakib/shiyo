import 'package:flutter/material.dart';

import 'package:shiyo/utils/colors/app_common_color.dart';
import 'package:shiyo/view/ui/screen/connect_device_screen/device_not_connet_screen.dart';
import 'package:shiyo/view/ui/screen/dashboard_screen/dashboard_home_light.dart';
import 'package:shiyo/view/ui/screen/history_screen/history_screen.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}
//
// final List<Widget> _screens=[
//   const DashboardLightScreen(),
//   const DeviceNotConnectScreen(),
//   const HistoryScreen()
// ];
// int _currentScreenIndex = 0;
class _BottomNavBarScreenState extends State<BottomNavBarScreen> {

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
      // body: _screens[_currentScreenIndex],
     // bottomNavigationBar:
      return BottomNavigationBar(
        backgroundColor: AppColors.bottomNavBarBackgroundColor,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: AppColors.primaryColor,
        // currentIndex: _currentScreenIndex,
        // onTap: (value) {
        //   _currentScreenIndex = value;
        //   setState(() {
        //
        //   });
        // },
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: AppColors.primaryColor,
                size: 30,
              ),
              label: "Home"),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/pay.png",
              color: Colors.black.withOpacity(.50),
              height: 30,
              width: 30,
              fit: BoxFit.cover,
            ),
            label: "Pay",
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/verifying.png'),
            label: "History",
          ),
        ],
      // ),
    );
  }
}
