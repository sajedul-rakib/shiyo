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

const Color iconColor=Color(0xffA6A6A6);

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        color: AppColors.bottomNavBarBackgroundColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const DashboardLightScreen()));
                  },
                  icon:  const Icon(Icons.home,color: iconColor,)),
              InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const DeviceNotConnectScreen()));
                  },
                  child: Image.asset('assets/images/pay.png')),
              IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HistoryScreen()));
                  },
                  icon: Image.asset('assets/images/verifying.png',color: iconColor,)),
            ],
            // ),
          ),
        ));
  }
}
