import 'package:flutter/material.dart';

import '../../../utils/colors/app_common_color.dart';
import '../screen/dashboard_screen/dashboard_connect_now.dart';
import '../screen/dashboard_screen/dashboard_send_monay.dart';

class DashboardWidgetPage extends StatelessWidget {
  const DashboardWidgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              categoryItem(context, "Pay", "assets/images/pay.png"),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                width: 120,
                height: 120,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 10),
                    Image.asset(
                      "assets/images/verifying.png",
                      color: Colors.white,
                      fit: BoxFit.cover,
                      width: 50,
                    ),
                    const SizedBox(height: 2),
                    const Text(
                      "History",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                width: 120,
                height: 120,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 10),
                    Image.asset(
                      "assets/images/support.png",
                      color: Colors.white,
                      fit: BoxFit.cover,
                      width: 50,
                    ),
                    const SizedBox(height: 2),
                    const Text(
                      "Support",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      "24/7",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                      ),
                    )
                  ],
                ),
              ),
              categoryItem2(context, "Instructions", "assets/images/tran.png"),
            ],
          )
        ],
      ),
    );
  }

  categoryItem(BuildContext context, String text, String image) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const DashboardPayPage(),
          ),
        );
      },
      child: Container(
        width: 120,
        height: 120,
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Image.asset(
              image,
              color: Colors.white,
            ),
            Text(
              text,
              style: const TextStyle(
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }

  categoryItem2(BuildContext context, String text, String image) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const DashboardConnectNow(),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(20),
        ),
        width: 120,
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 10),
            Image.asset(
              image,
              color: Colors.white,
              fit: BoxFit.cover,
              width: 50,
            ),
            const SizedBox(height: 2),
            Text(
              text,
              style: const TextStyle(
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
