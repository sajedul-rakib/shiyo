import 'package:flutter/material.dart';
import 'package:shiyo/utils/colors/app_common_color.dart';
import 'package:shiyo/view/ui/screen/payment_verifying_screen/payment_verifying_screen.dart';
import 'package:shiyo/view/ui/widgets/elevated_button.dart';
import 'package:shiyo/view/ui/widgets/payment_text_form_field.dart';

import '../../widgets/background_screen/background_screen.dart';
import '../../widgets/bottom_nav_bar.dart';
import '../payment_verifying_screen/payment_verification_two.dart';

class SwipeSuccessfulScreen extends StatelessWidget {
  const SwipeSuccessfulScreen({Key? key}) : super(key: key);

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
                        top: 160,
                        left: 190,
                        child: Container(
                          width: 10,
                          height: 10,
                          decoration: const BoxDecoration(
                              color: Colors.green, shape: BoxShape.circle),
                        ),
                      ),
                      Positioned(
                        left: -40,
                          top: 80,
                          child: Image.asset(
                            'assets/images/atm_card.png',
                            width: 250,
                          ))
                    ]),
                    Column(
                      children: [
                        Text(
                          "Swipe Successful",
                          style:
                          TextStyle(fontSize: 14, color: AppColors.successTextColor),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 20,),
                              PaymentTextFormField(
                                hintText: '5231*************799',
                                keyBoardType: TextInputType.number,
                                suffixIcon: Image.asset('assets/images/master_card.png',width: 30,height: 30,fit: BoxFit.scaleDown,),
                              ),
                              const SizedBox(height: 20,),
                              const Row(
                                children: [
                                  SizedBox(
                                      width: 180,
                                      child: PaymentTextFormField(
                                        hintText: "10/24",
                                      )),
                                  Spacer(),
                                  SizedBox(
                                      width: 140,
                                      child: PaymentTextFormField(
                                        hintText: "***",
                                        keyBoardType: TextInputType.number,
                                      ))
                                ],
                              ),
                              const SizedBox(height: 30,),
                              Center(
                                child: SizedBox(
                                  width: 200,
                                  child: AppElevatedButton(buttonText: 'Pay', onPressed: (){
                                    // TODO:Implement will letter
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                            const PaymentVerifyingScreenTwo()));
                                  }),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
