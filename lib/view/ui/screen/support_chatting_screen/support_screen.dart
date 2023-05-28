import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shiyo/utils/colors/app_common_color.dart';
import 'package:shiyo/view/ui/widgets/background_screen.dart';

class SupportScreen extends StatelessWidget {
  SupportScreen({Key? key}) : super(key: key);

  final TextEditingController _massageETController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor.withOpacity(.42),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Stack(
            children: [
              const BackgroundScreen(
                  child: Text(
                'Online Support \n 24/7',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    wordSpacing: 1.5,
                    letterSpacing: 1.5),
              )),
              Column(
                children: [
                  Center(
                    child: Container(
                      width: 360,
                      height: 500,
                      decoration: BoxDecoration(
                          color: const Color(0xffD9D9D9),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          const ListTile(
                            leading: Icon(
                              Icons.support_agent,
                              color: Colors.white,
                              size: 40,
                            ),
                            title: Text(
                              'Agent Ali is online',
                              style: TextStyle(fontSize: 14),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Wrap(children: [
                            const Icon(
                              Icons.support_agent,
                              color: Colors.white,
                              size: 30,
                            ),
                            Container(
                              width: 260,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5)),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 4.0),
                                child: Text(
                                  'How can I help you?',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontFamily:
                                          GoogleFonts.podkova().fontFamily),
                                ),
                              ),
                            )
                          ]),
                          const SizedBox(
                            height: 330,
                          ),
                          SizedBox(
                            width: 320,
                            child: TextFormField(
                              controller: _massageETController,
                              decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  filled: true,
                                  contentPadding: const EdgeInsets.all(15),
                                  hintText: "Type Massage Here!",
                                  hintStyle: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                  suffixIcon: InkWell(
                                    onTap: () {
                                      // TODO: Implement will latter
                                      log(_massageETController.text.toString());
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.all(6.0),
                                      child: Container(
                                        width: 20,
                                        height: 20,
                                        decoration: BoxDecoration(
                                            color: AppColors.primaryColor,
                                            shape: BoxShape.circle),
                                        child: Center(
                                          child: Transform.rotate(
                                              angle: -.7,
                                              child: const Icon(
                                                Icons.send,
                                                color: Colors.white,
                                                size: 20,
                                              )),
                                        ),
                                      ),
                                    ),
                                  ),
                                  border: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                    color: Colors.black,
                                    width: 1,
                                  )),
                                  focusedBorder: const OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.black))),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
