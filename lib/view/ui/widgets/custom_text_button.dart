import 'package:flutter/material.dart';


class CustomTextButton extends StatelessWidget {
  const CustomTextButton(
      {Key? key, this.buttonColor, this.buttonText, this.onPressed})
      : super(key: key);

  final Color? buttonColor;
  final String? buttonText;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: 80,
        height: 25,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: buttonColor,
        ),
        child: Center(
          child: Text(
            buttonText!,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
