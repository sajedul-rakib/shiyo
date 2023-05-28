import 'package:flutter/material.dart';
import '../../../utils/colors/app_common_color.dart';


class BackgroundScreen extends StatelessWidget {
  const BackgroundScreen({
    super.key, required this.child,
  });
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 290,
      color: AppColors.primaryColor.withOpacity(.42),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/images/company_logo.png',
                  width: 35,
                  height: 35,
                  fit: BoxFit.cover,
                ),
                const Text(
                  "B &D Trading & Co",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                ),
                const SizedBox(
                  width: 30,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Expanded(
              child: child)
        ],
      ),
    );
  }
}
