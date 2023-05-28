import 'package:flutter/material.dart';
import 'package:shiyo/utils/colors/app_common_color.dart';
import 'package:shiyo/view/ui/screen/history_screen/history_screen.dart';
import 'package:shiyo/view/ui/screen/instruction_screen/instruction_screen.dart';
import 'package:shiyo/view/ui/screen/payment_screen/enter_card_details_screen.dart';
import 'package:shiyo/view/ui/screen/payment_screen/payment_screen_one.dart';
import 'package:shiyo/view/ui/screen/payment_screen/payment_screen_two.dart';
import 'package:shiyo/view/ui/screen/splash_screen/splash_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shiyo/view/ui/screen/support_chatting_screen/support_screen.dart';
import 'package:shiyo/view/ui/screen/swipe_card_screen/swipe_card_screen_one.dart';
import 'package:shiyo/view/ui/screen/swipe_card_screen/swipe_successful_screen.dart';

void main(){
  runApp(const Shiyo());
}


class Shiyo extends StatelessWidget {
  const Shiyo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  const SwipeSuccessfulScreen(),
      theme: ThemeData(
        fontFamily:GoogleFonts.poppins().fontFamily,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.black,
            size: 35
          )
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          elevation: 0,
          backgroundColor: AppColors.bottomBarBackgroundColor,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedIconTheme:  IconThemeData(
            color: AppColors.primaryColor,
            size: 30
          ),
          type: BottomNavigationBarType.fixed
        )
      ),
    );
  }
}
