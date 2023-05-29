import 'package:flutter/material.dart';

import '../../../utils/colors/app_common_color.dart';
import '../../../utils/colors/colors.dart';
import '../screen/dashboard_screen/dashboard_home_dark.dart';

class TotalTranWidgetHeader extends StatelessWidget {
  const TotalTranWidgetHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      color: AppColors.primaryColor.withOpacity(0.4),
      child: Padding(
        padding: const EdgeInsets.only(top: 60, left: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/logo.png"),
              const SizedBox(height: 2),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Image.asset("assets/images/logo2.png"),
                    const SizedBox(width: 95),
                    const Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Text(
                        "B &D Trading & Co",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    const SizedBox(width: 40),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) =>
                                const DashboardDarkScreen(),
                          ),
                        );
                      },
                      child: Image.asset(
                        "assets/images/sun.png",
                        height: 80,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Align(
                alignment: Alignment.center,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Total Transactions",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      "৳ : 3000",
                      style: TextStyle(
                        fontSize: 44,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Container(
                      decoration: const BoxDecoration(
                        color: Color(0xFFCBCCDA),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                      ),
                      width: 200,
                      height: 40,
                      child: const Center(
                        child: Text(
                          "Transactions Details",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      const Text(
                        "Last Transaction",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        " TK : 550",
                        style: TextStyle(
                          fontSize: 16,
                          color: monayColor,
                        ),
                      ),
                      const Text(
                        " 27-11-22",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                      const Text(
                        " 21:00",
                        style: TextStyle(
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                  Image.asset("assets/images/logo3.png"),
                  Column(
                    children: [
                      const Text(
                        "This month",
                        style: TextStyle(fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        " TK : 2500",
                        style: TextStyle(
                          color: monayColor,
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
