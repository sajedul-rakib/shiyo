import 'package:flutter/material.dart';
import 'package:shiyo/utils/colors/app_common_color.dart';
import 'package:shiyo/view/ui/screen/language_select_screen/language_select_screen.dart';
import 'package:shiyo/view/ui/widgets/elevated_button.dart';

import '../../widgets/text_form_field.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              const SizedBox(
                height: 120,
              ),
              const Text(
                'Welcome Back!',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 18, fontWeight: FontWeight.w700, wordSpacing: 1),
              ),
              const SizedBox(
                height: 50,
              ),
              Center(
                child: Image.asset(
                  'assets/images/logo.png',
                  width: 174,
                  height: 66,
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const AppTextFormField(
                hintText: 'Enter your email',
              ),
              const SizedBox(
                height: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AppTextFormField(
                    hintText: 'Confirm password',
                    isHideText: true,
                    keyBoardType: TextInputType.visiblePassword,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  InkWell(
                    onTap: (){
                      //TODO: implement will latter
                    },
                    child: Text(
                      "Forgot Password?",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 90,
              ),
              AppElevatedButton(
                buttonText: "Sign In",
                onPressed: () {
                  //TODO: implement will latter
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LanguageSelectScreen()));
                },
              ),
              const SizedBox(
                height: 5,
              ),
              Wrap(
                children: [
                  const Text(
                    "Create new account?",
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                  InkWell(
                    onTap: () {
                      //TODO: implement will latter
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2.0),
                      child: Text(
                        'Sign Up',
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
