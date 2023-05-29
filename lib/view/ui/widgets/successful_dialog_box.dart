import 'package:flutter/material.dart';

class SuccessfulDialogBox extends StatelessWidget {
  const SuccessfulDialogBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 0,
      child: Container(
        width: 280,
        height: 150,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(width: 2, color: Colors.black.withOpacity(.5)),
            borderRadius: BorderRadius.circular(5)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Transaction Successful",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14),
            ),
            Center(
              child: Image.asset('assets/images/successful_sign.png'),
            )
          ],
        ),
      ),
    );
  }
}
