import 'package:flutter/material.dart';

import '../../../utils/colors/app_common_color.dart';


class CustomDailogSendMonay extends StatelessWidget {
  const CustomDailogSendMonay({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      alignment: Alignment.center,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      child: Container(
        height: 440,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 10,
              ),
              child: Column(
                children: [
                  Text(
                    "Verified by",
                    style: TextStyle(
                      fontSize: 24,
                      color: AppColors.primaryColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "VISA",
                    style: TextStyle(
                      fontSize: 30,
                      color: AppColors.primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              width: double.infinity,
              height: 35,
              decoration: BoxDecoration(
                color: AppColors.bottomNavBarBackgroundColor,
                border: Border.all(
                  color: Colors.black,
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 7, horizontal: 10),
                child: Text(
                  "Protecting your online payments ",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),
            Container(
              margin: const EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              width: double.infinity,
              height: 200,
              color: AppColors.bottomNavBarBackgroundColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Verifiying Your"),
                  const Text("Payment"),
                  const SizedBox(height: 40),
                  const Text("Verifiying !"),
                  const SizedBox(height: 10),
                  Container(
                    height: 15,
                    width: 140,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Row(
                children: [
                  Checkbox(
                    value: false,
                    onChanged: (value) {},
                  ),
                  const Text(
                    "i agree  that by clicking the box i have\n read, understood and accepted the\n 3D Secure terms and Conditions ",
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                textButton("Submit", Colors.blue),
                textButton("Resend", Colors.blue),
                textButton("Cancel", Colors.grey),
              ],
            )
          ],
        ),
      ),
    );
  }

  textButton(String text, Color color) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 80,
        height: 25,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: color,
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
