import 'package:flutter/material.dart';

import '../../../../utils/colors/app_common_color.dart';
import '../../widgets/shipy_widgets.dart';

class DashboardConnectProgress extends StatelessWidget {
  const DashboardConnectProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: AppColors.primaryColor.withOpacity(0.4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 50,
                    horizontal: 15,
                  ),
                  child: Row(
                    children: [
                      Image(
                        image: AssetImage("assets/images/logo2.png"),
                      ),
                      SizedBox(width: 120),
                      Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Text("B &D Trading & Co"),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 300,
                  child: const Image(
                    image: AssetImage(
                      "assets/images/payment.png",
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 50),
          Expanded(
            flex: 40,
            child: Column(
              children: [
                Container(
                  width: 200,
                  height: 120,
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Connecting Plz Wait",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(height: 20),
                      Center(
                        child: CircularProgressIndicator(),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          const Expanded(flex: 8, child: ShipyWidgetsPage()),
        ],
      ),
    );
  }
}
