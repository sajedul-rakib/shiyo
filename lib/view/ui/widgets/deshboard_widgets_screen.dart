import 'package:flutter/material.dart';

import '../../../utils/colors/app_common_color.dart';
import '../../../utils/colors/colors.dart';

class DeshbordWidgetsScreen extends StatelessWidget {
  const DeshbordWidgetsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primaryColor.withOpacity(0.4),
      child: Padding(
        padding: const EdgeInsets.only(left: 15, top: 60),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/logo.png"),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("assets/images/logo2.png"),
                  const Padding(
                    padding: EdgeInsets.only(right: 145, top: 20),
                    child: Text(
                      "B &D Trading & Co",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
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
                    const SizedBox(height: 15),
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
                        style: TextStyle(),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        " TK : 550",
                        style: TextStyle(fontSize: 16, color: monayColor),
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
