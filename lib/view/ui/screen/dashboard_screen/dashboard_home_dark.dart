import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shiyo/view/ui/widgets/background_screen/dark_background_screen.dart';

import '../../../../utils/colors/app_common_color.dart';
import '../../../../utils/colors/colors.dart';
import '../../widgets/service_cart.dart';
import '../../widgets/shipy_widgets.dart';

class DashboardDarkScreen extends StatelessWidget {
  const DashboardDarkScreen({
    super.key,
  });

  final Color iconColor=const Color(0xff737373);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff0D416B),
        leading: const Icon(
          Icons.logout,
          color: Colors.white,
        ),
      ),
      floatingActionButton: const ShipyWidgetsPage(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DarkBackgroundScreen(
                  child: Column(
                children: [
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
                        fontSize: 43,
                        fontFamily: GoogleFonts.lato().fontFamily),
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
                                style:
                                    TextStyle(fontSize: 16, color: monayColor),
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
                      width: 320,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ServiceCart(
                            iconImageOrIcon: Image.asset(
                              'assets/images/slogo.png',
                              color:iconColor ,
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                            serviceName: 'Swipe',
                            backgroundColor:
                                AppColors.bottomNavBarBackgroundColor,
                          ),
                          ServiceCart(
                            iconImageOrIcon: Image.asset(
                              'assets/images/verifying.png',
                              width: 80,
                              height: 80,
                              fit: BoxFit.cover,
                              color: iconColor,
                            ),
                            serviceName: 'History',
                            backgroundColor:
                                AppColors.bottomNavBarBackgroundColor,
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
                      width: 320,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ServiceCart(
                            iconImageOrIcon:Image.asset(
                              'assets/images/support.png',
                              width: 100,
                              height: 100,
                              color: iconColor,
                              fit: BoxFit.cover,
                            ),
                            serviceName: 'Support',
                            backgroundColor:
                                AppColors.bottomNavBarBackgroundColor,
                          ),
                          ServiceCart(
                            iconImageOrIcon: Image.asset(
                              'assets/images/tran.png',
                              width: 100,
                              height: 100,
                              color: iconColor,
                              fit: BoxFit.cover,
                            ),
                            serviceName: 'Introduction',
                            backgroundColor:
                                AppColors.bottomNavBarBackgroundColor,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
