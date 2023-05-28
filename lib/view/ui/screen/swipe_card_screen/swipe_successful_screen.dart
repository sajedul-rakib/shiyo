import 'package:flutter/material.dart';
import 'package:shiyo/utils/colors/app_common_color.dart';
import 'package:shiyo/view/ui/widgets/elevated_button.dart';
import 'package:shiyo/view/ui/widgets/payment_text_form_field.dart';

import '../../widgets/background_screen.dart';

class SwipeSuccessfulScreen extends StatelessWidget {
  const SwipeSuccessfulScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor.withOpacity(.42),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // floatingActionButton: Container(
      //   width: 160,
      //   height: 160,
      //   decoration: BoxDecoration(
      //       color: AppColors.bottomBarBackgroundColor, shape: BoxShape.circle),
      //   child: Image.asset(
      //     'assets/images/shiyo_logo.png',
      //     width: 65,
      //     height: 75,
      //     fit: BoxFit.contain,
      //   ),
      // ),
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: 1,
      //   items: [
      //     const BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
      //     BottomNavigationBarItem(
      //         icon: Image.asset(
      //           'assets/images/atm_scan.png',
      //           width: 40,
      //           height: 40,
      //         ),
      //         label: "Scan"),
      //     const BottomNavigationBarItem(
      //         icon: Icon(Icons.punch_clock_outlined), label: "Verify "),
      //   ],
      // ),
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
                      top: 60,
                      child: Image.asset(
                        'assets/images/atm_card.png',
                        width: 150,
                      ))
                ]),
              ),
              const SizedBox(
                height: 40,
              ),
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
                        }),
                      ),
                    )
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
