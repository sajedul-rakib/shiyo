import 'package:flutter/material.dart';

class PaymentTextFormField extends StatelessWidget {
  const PaymentTextFormField({
    super.key,
    this.hintText,
    this.textEditingController,
    this.validation,
    this.keyBoardType = TextInputType.text,
    this.isHideText = false,
    this.suffixIcon,
  });

  final String? hintText;
  final TextEditingController? textEditingController;
  final Function(String?)? validation;
  final TextInputType? keyBoardType;
  final bool isHideText;
  final dynamic suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isHideText,
      controller: textEditingController,
      validator: (value) {
        if (validation != null) {
          return validation!(value);
        } else {
          return null;
        }
      },
      keyboardType: keyBoardType,
      decoration: InputDecoration(
        fillColor: Colors.white,
          filled: true,
          hintText: hintText,
          hintStyle:  TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Colors.black.withOpacity(.5),
          ),
          suffixIcon: suffixIcon,
          border: OutlineInputBorder(
              borderSide:
                  BorderSide(width: 1, color: Colors.black.withOpacity(.2)),
              borderRadius: BorderRadius.circular(5)),
          contentPadding: const EdgeInsets.all(
            15.0,
          )),
      style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 24,
          color: Colors.black.withOpacity(0.5)),
    );
  }
}
