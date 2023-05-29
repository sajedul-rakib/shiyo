import 'package:flutter/material.dart';
import 'package:shiyo/utils/colors/app_common_color.dart';
import 'package:shiyo/view/ui/widgets/payment_text_form_field.dart';

import '../../widgets/background_screen/background_screen.dart';
import '../../widgets/botom_nav_bar.dart';

class PaymentScreenTwo extends StatelessWidget {
  const PaymentScreenTwo({Key? key}) : super(key: key);

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
                child: Column(children: [
                  Text("Please enter Amount",style: TextStyle(
                    fontSize: 14,
                    color: AppColors.successTextColor
                  ),),
                  const SizedBox(height: 40,),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40.0),
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

                ],)
              ),
            ],
          ),
        ),
      ),
    );
  }
}
