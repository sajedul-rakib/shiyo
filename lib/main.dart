import 'package:flutter/material.dart';
import 'package:shiyo/view/ui/screen/splash_screen/splash_screen.dart';

void main(){
  runApp(const Shiyo());
}


class Shiyo extends StatelessWidget {
  const Shiyo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
