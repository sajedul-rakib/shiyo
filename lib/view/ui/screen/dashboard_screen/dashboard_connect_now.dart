import 'package:flutter/material.dart';

import '../../../../utils/colors/app_common_color.dart';
import '../../widgets/shipy_widgets.dart';
import 'dashboard_connect_progress.dart';

class DashboardConnectNow extends StatelessWidget {
  const DashboardConnectNow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: AppColors.primaryColor.withOpacity(0.4),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
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
                SizedBox(
                  width: double.infinity,
                  height: 300,
                  child: Image(
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
                  const Text(
                    "Device is not Connected  Plz Connect",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.red,
                    ),
                  ),
                  const Text(
                    "to perform the payments ",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.red,
                    ),
                  ),
                  const SizedBox(height: 50),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) =>  const DashboardConnectProgress(),
                        ),
                      );
                    },
                    child: Container(
                      width: 200,
                      height: 50,
                      color: AppColors.primaryColor,
                      child: const Center(
                        child: Text(
                          "Connect Now",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )),
          const Expanded(
            flex: 8,
            child: ShipyWidgetsPage(),
          ),
        ],
      ),
    );
  }
}
