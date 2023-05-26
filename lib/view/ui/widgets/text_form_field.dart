import 'package:flutter/material.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({
    super.key,
    this.hintText,
    this.textEditingController,
    this.validation, this.keyBoardType=TextInputType.text,
  });

  final String? hintText;
  final TextEditingController? textEditingController;
  final Function(String?)? validation;
  final TextInputType? keyBoardType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
          hintText: hintText,
          hintStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
          border: OutlineInputBorder(
              borderSide:
                  BorderSide(width: 1, color: Colors.grey.withOpacity(.1)),
              borderRadius: BorderRadius.circular(8)),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 20, horizontal: 15)),
    );
  }
}
