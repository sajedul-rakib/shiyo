import 'package:flutter/material.dart';
import 'package:shiyo/utils/colors/app_common_color.dart';
import 'package:shiyo/view/ui/widgets/botom_nav_bar.dart';
import '../dashboard_screen/dashboard_home_light.dart';

class LanguageSelectScreen extends StatelessWidget {
  const LanguageSelectScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              'assets/images/logo.png',
              width: 174,
              height: 66,
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Please Select Language",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.w700, fontSize: 18, wordSpacing: 1.5),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "অনুগ্রহ করে ভাষা নির্বাচন করুন",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.w700, fontSize: 18, wordSpacing: 1.5),
          ),
          const SizedBox(
            height: 40,
          ),
          InkWell(
            onTap: () {
              //TODO: implement will latter
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const BottomNavBarScreen()));
            },
            child: Container(
              width: 250,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(width: 1, color: Colors.grey),
                color: AppColors.primaryColor,
              ),
              child: const Center(
                  child: Text(
                "English/Us",
                style: TextStyle(fontSize: 30, color: Colors.black),
              )),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              //TODO: implement will latter
            },
            child: Container(
              width: 250,
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(width: 1, color: Colors.grey)),
              child: const Center(
                  child: Text(
                "বাংলা",
                style: TextStyle(fontSize: 30, color: Colors.black),
              )),
            ),
          ),
        ],
      ),
    );
  }
}
