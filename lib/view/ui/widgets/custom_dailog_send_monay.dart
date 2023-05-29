import 'package:flutter/material.dart';
import 'package:shiyo/view/ui/screen/transaction_successful_screen/transaction_successful_screen.dart';

import '../../../utils/colors/app_common_color.dart';
import 'custom_text_button.dart';

class CustomDialogBoxSendMoney extends StatelessWidget {
  const CustomDialogBoxSendMoney({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      alignment: Alignment.center,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
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
                const Text(
                  "Verifying your \n payment",
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 40),
                const Text("Verifying !"),
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
          SizedBox(
            width: 350,
            child: Row(
              children: [
                Checkbox(
                  value: false,
                  onChanged: (value) {},
                ),
                const Text(
                  "I agree  that by clicking the box i have\nread, understood and accepted the\n3D Secure terms and Conditions ",
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
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
                              const TransactionSuccessfulScreen()));
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
