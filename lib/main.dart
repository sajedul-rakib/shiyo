import 'package:flutter/material.dart';
import 'package:shiyo/view/ui/screen/splash_screen/splash_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(const Shiyo());
}


class Shiyo extends StatelessWidget {
  const Shiyo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      theme: ThemeData(
        fontFamily:GoogleFonts.poppins().fontFamily,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.black,
            size: 35
          )
        )
      ),
    );
  }
}
