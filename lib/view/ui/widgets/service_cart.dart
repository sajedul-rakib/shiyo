import 'package:flutter/material.dart';



class ServiceCart extends StatelessWidget {
  const ServiceCart({
    super.key,
    required this.iconImageOrIcon,
    required this.serviceName,
    this.onPressed,
    this.backgroundColor,
    this.textColor=Colors.black,
  });

  final Widget? iconImageOrIcon;
  final String? serviceName;
  final VoidCallback? onPressed;
  final Color? backgroundColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: SizedBox(
        width: 125,
        height: 125,
        child: InkWell(
          onTap: onPressed,
          child: Card(
            color: backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
            ),
            child: Column(
              children: [
                Center(
                  child: iconImageOrIcon
                ),
                Text(
                  serviceName!,
                  textAlign: TextAlign.center,
                  style:  TextStyle(
                    color: textColor,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
