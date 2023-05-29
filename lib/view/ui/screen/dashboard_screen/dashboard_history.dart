import 'package:flutter/material.dart';

import '../../../../utils/colors/colors.dart';

class DeshbordHistoryPage extends StatefulWidget {
  const DeshbordHistoryPage({super.key});

  @override
  State<DeshbordHistoryPage> createState() => _DeshbordHistoryPageState();
}

class _DeshbordHistoryPageState extends State<DeshbordHistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: boxColor.withOpacity(0.4),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 40,
                child: Container(
                  width: double.infinity,
                  height: 300,
                  alignment: Alignment.topCenter,
                  color: primaryColor.withOpacity(0.4),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, top: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(height: 2),
                        Row(
                          children: [
                            Image.asset("assets/images/logo2.png"),
                            const SizedBox(width: 97),
                            const Padding(
                              padding: EdgeInsets.only(top: 20),
                              child: Text(
                                "B &D Trading & Co",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                        Align(
                          alignment: Alignment.center,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Total Transactions",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              const SizedBox(height: 15),
                              const Text(
                                "৳ : 7000",
                                style: TextStyle(
                                  fontSize: 44,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const SizedBox(height: 15),
                              Container(
                                decoration: const BoxDecoration(
                                  color: Color(0xFFCBCCDA),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                  ),
                                ),
                                width: 200,
                                height: 40,
                                child: const Center(
                                  child: Text(
                                    "Transactions Details",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 15),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Expanded(
                  flex: 60,
                  child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.only(
                            bottom: 8, left: 16, right: 16),
                        width: double.infinity,
                        height: 60,
                        decoration: BoxDecoration(
                          color: boxColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "৳ : 550",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              Image.asset("assets/images/logo3.png"),
                              const Padding(
                                padding: EdgeInsets.symmetric(vertical: 12),
                                child: Column(
                                  children: [
                                    Text(
                                      "27-01-23",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      "11:00",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  )),
              Expanded(
                flex: 8,
                child: Center(
                  child: Container(
                    height: 60,
                    width: 100,
                    decoration: BoxDecoration(
                      color: primaryColor.withOpacity(0.4),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(100),
                        topRight: Radius.circular(100),
                      ),
                    ),
                    child: Center(
                      child: Image.asset(
                        "assets/images/shiyo.png",
                        width: 100,
                        height: 40,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
