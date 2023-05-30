import 'package:flutter/material.dart';
import 'package:shiyo/utils/colors/app_common_color.dart';
import 'package:shiyo/view/ui/screen/swipe_card_screen/swipe_successful_screen.dart';
import 'package:shiyo/view/ui/widgets/payment_text_form_field.dart';

import '../../widgets/background_screen/background_screen.dart';
import '../../widgets/bottom_nav_bar.dart';

class SwipeCardScreenOne extends StatefulWidget {
  const SwipeCardScreenOne({Key? key}) : super(key: key);

  @override
  State<SwipeCardScreenOne> createState() => _SwipeCardScreenOneState();
}

class _SwipeCardScreenOneState extends State<SwipeCardScreenOne> {

  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(const Duration(seconds: 3)).then((value) =>  Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
            const SwipeSuccessfulScreen())));
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: BackgroundScreen(
            child: Column(children: [
              Stack(
                children: [
                  Image.asset(
                    'assets/images/pos_machine.png',
                    width: 400,
                    height: 400,
                    fit: BoxFit.contain,
                  ),
                  Positioned(
                    top: 250,
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
                      )),
                ],
              ),
              Column(
                children: [
                  Text(
                    "Device is connected",
                    style:
                    TextStyle(fontSize: 14, color: AppColors.successTextColor),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Please Swipe the Card",
                    style:
                    TextStyle(fontSize: 14, color: AppColors.successTextColor),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Text(
                            "Amount",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                wordSpacing: 1.5),
                          ),
                        ),
                        PaymentTextFormField(
                          hintText: '৳: 4500',
                          keyBoardType: TextInputType.number,
                        ),
                        SizedBox(height: 20,),
                        PaymentTextFormField(
                          hintText: 'Card Number',
                          keyBoardType: TextInputType.number,
                        ),
                        SizedBox(height: 20,),
                        Row(
                          children: [
                            SizedBox(
                                width: 180,
                                child: PaymentTextFormField(
                                  hintText: "Expire Date",
                                )),
                            Spacer(),
                            SizedBox(
                                width: 140,
                                child: PaymentTextFormField(
                                  hintText: "CVV",
                                  keyBoardType: TextInputType.number,
                                ))
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30,)
            ]),
          ),
        ),
      ),
    );
  }
}
