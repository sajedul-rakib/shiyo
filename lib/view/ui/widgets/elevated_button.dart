import 'package:flutter/material.dart';

import '../../../utils/colors/app_common_color.dart';



class AppElevatedButton extends StatelessWidget {
  const AppElevatedButton({
    super.key,required this.buttonText, required this.onPressed,
  });

  final String buttonText;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primaryColor,
              side: BorderSide.none,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero)),
          onPressed: onPressed,
          child:  Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Text(
              buttonText,
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  wordSpacing: 1.2),
            ),
          )),
    );
  }
}
