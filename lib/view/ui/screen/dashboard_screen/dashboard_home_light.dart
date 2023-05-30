import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shiyo/view/ui/screen/connect_device_screen/device_not_connet_screen.dart';
import 'package:shiyo/view/ui/screen/history_screen/history_screen.dart';
import 'package:shiyo/view/ui/screen/instruction_screen/instruction_screen.dart';
import 'package:shiyo/view/ui/screen/support_chatting_screen/support_screen.dart';

import '../../../../utils/colors/app_common_color.dart';
import '../../../../utils/colors/colors.dart';
import '../../widgets/background_screen/background_screen.dart';
import '../../widgets/bottom_nav_bar.dart';
import '../../widgets/service_cart.dart';
import '../../widgets/custom_floating_action_button.dart';

class DashboardLightScreen extends StatelessWidget {
  const DashboardLightScreen({super.key});

  final Color iconColor = const Color(0xffFFFFFF);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: AppColors.primaryColor.withOpacity(.42),
          leading: InkWell(
              onTap: () {}, child: Image.asset('assets/images/logout.png'))),
      bottomNavigationBar: const BottomNavBarScreen(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BackgroundScreen(
              child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              const Text(
                "Total Transaction",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "৳ : 3000",
                style: TextStyle(
                    fontSize: 43, fontFamily: GoogleFonts.lato().fontFamily),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: 200,
                height: 50,
                decoration: const BoxDecoration(
                    color: Color(0xffCBCCDA),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10))),
                child: const Center(
                  child: Text(
                    'Transaction History',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 140,
                      child: Column(
                        children: [
                          const Text(
                            "Last Transaction",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                            ),
                          ),
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
                    ),
                    Expanded(
                        child: Image.asset(
                      'assets/images/logo3.png',
                    )),
                    Expanded(
                      child: Column(
                        children: [
                          const Text(
                            "This month",
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ),
                          Text(
                            " TK : 2500",
                            style: TextStyle(
                              color: monayColor,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          )),
          const SizedBox(height: 15),
          Column(
            children: [
              Center(
                child: SizedBox(
                  width: 300,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ServiceCart(
                        textColor: Colors.white,
                        iconImageOrIcon: Image.asset(
                          'assets/images/slogo.png',
                          width: 80,
                          height: 80,
                          color: iconColor,
                          fit: BoxFit.cover,
                        ),
                        serviceName: 'Swipe',
                        backgroundColor: AppColors.primaryColor,
                        onPressed: () {
                          //TODO:Implement will letter
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const DeviceNotConnectScreen()));
                        },
                      ),
                      ServiceCart(
                        textColor: iconColor,
                        onPressed: () {
                          //TODO:Implement will letter
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HistoryScreen()));
                        },
                        iconImageOrIcon: Image.asset(
                          'assets/images/verifying.png',
                          width: 80,
                          height: 80,
                          color: iconColor,
                          fit: BoxFit.cover,
                        ),
                        serviceName: 'History',
                        backgroundColor: AppColors.primaryColor,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: SizedBox(
                  width: 300,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ServiceCart(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SupportScreen()));
                        },
                        textColor: iconColor,
                        iconImageOrIcon: Image.asset(
                          'assets/images/support.png',
                          width: 70,
                          height: 70,
                          fit: BoxFit.cover,
                          color: iconColor,
                        ),
                        serviceName: 'Support\n24/7',
                        backgroundColor: AppColors.primaryColor,
                      ),
                      ServiceCart(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const InstructionScreen()));
                        },
                        textColor: iconColor,
                        iconImageOrIcon: Image.asset(
                          'assets/images/tran.png',
                          width: 80,
                          height: 80,
                          fit: BoxFit.cover,
                          color: iconColor,
                        ),
                        serviceName: 'Introduction',
                        backgroundColor: AppColors.primaryColor,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
