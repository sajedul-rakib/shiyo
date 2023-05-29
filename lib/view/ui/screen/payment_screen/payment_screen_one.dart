import 'package:flutter/material.dart';
import 'package:shiyo/utils/colors/app_common_color.dart';
import 'package:shiyo/view/ui/widgets/elevated_button.dart';
import 'package:shiyo/view/ui/widgets/payment_text_form_field.dart';

import '../../widgets/background_screen/background_screen.dart';
import '../../widgets/botom_nav_bar.dart';

class PaymentScreenOne extends StatelessWidget {
  const PaymentScreenOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor.withOpacity(.42),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      bottomNavigationBar: const BottomNavBarScreen(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              BackgroundScreen(
                child: Stack(
                    children: [Image.asset(
                      'assets/images/pos_machine.png',
                      width: 400,
                      height: 400,
                      fit: BoxFit.cover,
                    ),
                      Positioned(
                        top:160,
                        left: 190,
                        child: Container(
                          width: 10,
                          height: 10,
                          decoration: const BoxDecoration(
                              color: Colors.green,
                              shape: BoxShape.circle
                          ),
                        ),
                      )
                    ]
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Text(
                "Device is connected Successfully",
                style:
                TextStyle(fontSize: 14, color: AppColors.successTextColor),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "You can make the payments",
                style:
                TextStyle(fontSize: 14, color: AppColors.successTextColor),
              ),
              const SizedBox(
                height: 40,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Text(
                        "Enter Amount",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            wordSpacing: 1.5),
                      ),
                    ),
                    PaymentTextFormField(
                      hintText: 'Please Enter Amount in Numbers',
                      keyBoardType: TextInputType.number,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 250,
                child: AppElevatedButton(
                    buttonText: "Charge",
                    onPressed: () {
                      //TODO:Implements will letter
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
