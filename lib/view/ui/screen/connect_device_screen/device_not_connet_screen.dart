import 'package:flutter/material.dart';
import 'package:shiyo/utils/colors/app_common_color.dart';
import 'package:shiyo/view/ui/screen/connect_device_screen/connect_device_screen.dart';
import 'package:shiyo/view/ui/widgets/elevated_button.dart';

import '../../widgets/background_screen/background_screen.dart';
import '../../widgets/bottom_nav_bar.dart';
import '../../widgets/custom_floating_action_button.dart';

class DeviceNotConnectScreen extends StatelessWidget {
  const DeviceNotConnectScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor.withOpacity(.42),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      bottomNavigationBar: const BottomNavBarScreen(),
      floatingActionButton: const CustomFloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: BackgroundScreen(
          child: Column(
            children: [
              Stack(children: [
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
                        color: Colors.red, shape: BoxShape.circle),
                  ),
                ),
              ]),
              Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40.0),
                    child: Text(
                      "Device is not Connected  Plz Connect to perform the payments ",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 14, color: Colors.red),
                    ),
                  ),
                  const SizedBox(height: 40,),
                  SizedBox(width: 200,
                    child: AppElevatedButton(buttonText: 'Connect Now', onPressed: (){
                      //TODO: Implement will letter
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                              const ConnectDeviceScreen()));
                    }),
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
