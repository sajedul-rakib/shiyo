import 'package:flutter/material.dart';
import 'package:shiyo/utils/colors/app_common_color.dart';

import '../screen/payment_verifying_screen/payment_verifying_screen.dart';
import 'custom_text_button.dart';

class CustomDialogBox extends StatelessWidget {
  const CustomDialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 0,
      alignment: Alignment.center,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 100.0),
            child: Text(
              "Verified by\nVisa",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                color: AppColors.primaryColor,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Container(
              width: double.infinity,
              height: 35,
              decoration: BoxDecoration(
                color: Colors.grey,
                border: Border.all(
                  color: Colors.black,
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 7, horizontal: 10),
                child: Text(
                  "Protecting your online payments ",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
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
                      hintStyle:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Checkbox(
                value: false,
                onChanged: (value) {},
              ),
              const Text(
                "i agree  that by clicking the box i have\nread, understood and accepted the\n3D Secure terms and Conditions ",
                textAlign: TextAlign.justify,
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomTextButton(
                buttonText: 'Submit',
                buttonColor: Colors.blue,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const PaymentVerifyingScreenOne()));
                },
              ),
              const CustomTextButton(
                buttonText: 'Resend',
                buttonColor: Colors.blue,
                onPressed: null,
              ),
              const CustomTextButton(
                buttonText: 'Cancel',
                buttonColor: Colors.grey,
                onPressed: null,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
