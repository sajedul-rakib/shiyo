import 'package:flutter/material.dart';
import 'package:shiyo/utils/colors/app_common_color.dart';
import 'package:shiyo/view/ui/widgets/background_screen/background_screen_with_device_screen.dart';
import 'package:shiyo/view/ui/widgets/custom_dailog_box.dart';

import '../../widgets/bottom_nav_bar.dart';
import '../../widgets/custom_floating_action_button.dart';

class PaymentVerifyingScreenTwo extends StatelessWidget {
  const PaymentVerifyingScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor.withOpacity(.42),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      bottomNavigationBar: const BottomNavBarScreen(),
      floatingActionButton: const CustomFloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: const SafeArea(
        child: SingleChildScrollView(
          child: BackgroundScreenWithDeviceImage(
              child:Column(
                children: [
                  SizedBox(height: 100,),
                  CustomDialogBox()
                ],
              )
          ),
        ),
      ),
    );
  }
}
