import 'package:flutter/material.dart';
import '../../../../utils/colors/app_common_color.dart';

class DarkBackgroundScreen extends StatelessWidget {
  const DarkBackgroundScreen({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 320,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            const Color(0xff0D416B),
            AppColors.primaryColor.withOpacity(0.5),
          ],
        ),
      ),
      child: Stack(
        children:[ Column(
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
              height: 20,
            ),
            Expanded(child: child)
          ],
        ),
          Positioned(
              bottom: 230,
              left: 290,
              child: Image.asset(
                'assets/images/moon.png',
                width: 100,
                height: 100,
                fit: BoxFit.scaleDown,
              )),
        ]
      ),
    );
  }
}
