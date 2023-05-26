import 'package:flutter/material.dart';

import '../../widgets/elevated_button.dart';
import '../sign_up_screen/sign_up_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                'assets/images/background.png',
                width: 400,
                fit: BoxFit.fitWidth,
              ),
              const SizedBox(
                height: 50,
              ),
              Image.asset(
                'assets/images/logo.png',
                height: 66,
                width: 144,
                fit: BoxFit.scaleDown,
              ),
              const SizedBox(
                height: 80,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: Text(
                  'Effortless Transactions, Limitless Possibilities',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w700, wordSpacing: 1),
                ),
              ),
              const SizedBox(
                height: 120,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: AppElevatedButton(
                  buttonText: "Get Started",
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUpScreen()));
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
