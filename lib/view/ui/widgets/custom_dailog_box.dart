import 'package:flutter/material.dart';
import 'package:shiyo/utils/colors/app_common_color.dart';


class CustomDailog extends StatelessWidget {
  const CustomDailog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      alignment: Alignment.center,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      child: Container(
        height: 460,
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
              height: 50,
              decoration: BoxDecoration(
                color: AppColors.bottomNavBarBackgroundColor,
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                child: Text(
                  "One  time passcode is required for this payment passcode is sent to your registered number +8890****** ",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(
                right: 25,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Merchant :  B&D Trading  &Co ",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Amount :  BDT . 4500 ",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Card Number  :  5231-****-****-** ",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Reference Id  :  I65tvu ",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 4),
              child: Row(
                children: [
                  Expanded(
                    flex: 30,
                    child: Text(
                      "Enter One-Time Passcode",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 25,
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        hintText: "Enter 6 digits Passcode",
                        hintStyle: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
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
