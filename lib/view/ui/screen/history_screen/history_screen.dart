import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shiyo/utils/colors/app_common_color.dart';

import '../../widgets/background_screen/background_screen.dart';
import '../../widgets/botom_nav_bar.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor.withOpacity(.42),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      bottomNavigationBar: const BottomNavBarScreen(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              BackgroundScreen(
                  child: Column(
                children: [
                  const Text(
                    "Total Transaction",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "৳ : 3000",
                    style: TextStyle(
                        fontSize: 43,
                        fontFamily: GoogleFonts.lato().fontFamily),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 200,
                    height: 50,
                    decoration: const BoxDecoration(
                        color: Color(0xffCBCCDA),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10))),
                    child: const Center(
                      child: Text(
                        'Transaction History',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ),
                  )
                ],
              )),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ListTile(
                  shape: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide.none),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                  tileColor: const Color(0xffD9D9D9),
                  leading: const Text(
                    '৳:300',
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                  ),
                  title: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Image.asset('assets/images/money_transaction_logo.png',width: 100,height: 60,fit: BoxFit.cover,),
                  ),

                  trailing: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Text(
                        "21-12-2023",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black.withOpacity(.8)),
                      ),
                      Text(
                        "10:20am",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.black.withOpacity(.8)),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
