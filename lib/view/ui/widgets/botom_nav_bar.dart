import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:shiyo/utils/colors/app_common_color.dart';
import 'package:shiyo/view/ui/screen/dashboard_screen/dashboard_home_light.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  int pageState = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: pageState,
        children: const [
          DashboardLightScreen()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.bottomNavBarBackgroundColor,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: AppColors.primaryColor,
        currentIndex: pageState,
        onTap: (value) {
          setState(() {
            pageState = value;
          });
        },
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
      ),
    );
  }
}
