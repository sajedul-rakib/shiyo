import 'package:flutter/material.dart';
import 'package:shiyo/utils/colors/app_common_color.dart';
import 'package:shiyo/view/ui/screen/payment_screen/payment_screen_one.dart';

import '../../widgets/background_screen/background_screen.dart';
import '../../widgets/bottom_nav_bar.dart';
import '../../widgets/custom_floating_action_button.dart';

class ConnectDeviceScreen extends StatefulWidget {
  const ConnectDeviceScreen({Key? key}) : super(key: key);

  @override
  State<ConnectDeviceScreen> createState() => _ConnectDeviceScreenState();
}

class _ConnectDeviceScreenState extends State<ConnectDeviceScreen> {

  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(const Duration(seconds: 3)).then((value) =>  Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
            const PaymentScreenOne())));
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor.withOpacity(.42),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      bottomNavigationBar: const BottomNavBarScreen(),
      // floatingActionButton: const CustomFloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              BackgroundScreen(
                child: Stack(children: [
                  Image.asset(
                    'assets/images/pos_machine.png',
                    width: 400,
                    height: 400,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    top: 250,
                    left: 190,
                    child: Container(
                      width: 10,
                      height: 10,
                      decoration: const BoxDecoration(
                          color: Colors.yellow, shape: BoxShape.circle),
                    ),
                  ),
                ]),
              ),
              Center(
                child: Container(
                  width: 230,
                  height: 160,
                  decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(20)),
                  child: const Column(
                    children: [
                      SizedBox(height: 20,),
                      Text(
                        "Connecting plz Wait",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                      SizedBox(height: 10,),
                      SizedBox(
                        width: 80,
                        height: 80,
                        child: CircularProgressIndicator(
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
