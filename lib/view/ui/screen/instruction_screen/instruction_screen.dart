import 'package:flutter/material.dart';
import 'package:shiyo/utils/colors/app_common_color.dart';
import 'package:shiyo/view/ui/widgets/background_screen/background_screen.dart';

class InstructionScreen extends StatelessWidget {
  const InstructionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor.withOpacity(.42),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: const SafeArea(
        child: BackgroundScreen(
            child: Column(
          children: [
            SizedBox(
              height: 150,
            ),
            Center(
              child: Text(
                "Instructions & Reference Videos ",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20, color: Colors.white, wordSpacing: 1.5),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
