import 'package:flutter/material.dart';
import 'package:shiyo/utils/colors/app_common_color.dart';
import 'package:shiyo/view/ui/widgets/elevated_button.dart';

import '../../widgets/text_form_field.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 120,
              ),
              Center(
                child: Image.asset(
                  'assets/images/logo.png',
                  width: 144,
                  height: 66,
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                'Welcome Onboard!',
                style: TextStyle(
                    fontSize: 18, fontWeight: FontWeight.w700, wordSpacing: 1),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Let’s help you make payments hassle free.',
                style: TextStyle(fontSize: 12),
              ),
              const SizedBox(
                height: 40,
              ),
              const AppTextFormField(
                hintText: 'Enter your full name',
              ),
              const SizedBox(
                height: 15,
              ),
              const AppTextFormField(
                hintText: 'Enter your mobile number',
              ),
              const SizedBox(
                height: 15,
              ),
              const AppTextFormField(
                hintText: 'Create password',
              ),
              const SizedBox(
                height: 15,
              ),
              const AppTextFormField(
                hintText: 'Confirm password',
              ),
              const SizedBox(
                height: 30,
              ),
              const AppElevatedButton(
                buttonText: "Register",
              ),
              const SizedBox(
                height: 5,
              ),
              Wrap(
                children: [
                  const Text(
                    "Already have an account?",
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2.0),
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                            color: AppColors.primaryColor,
                            fontSize: 12,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
