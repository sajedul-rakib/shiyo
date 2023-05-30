import 'package:flutter/material.dart';

import '../../../utils/colors/app_common_color.dart';


class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 60,
      decoration: BoxDecoration(
        color: AppColors.primaryColor.withOpacity(0.4),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(100),
          topRight: Radius.circular(100),
        ),
      ),
      child: InkWell(
        onTap: (){},
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        child: Center(
          child: Image.asset(
            "assets/images/shiyo_logo.png",
            // width: 100,
            // height: 40,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
