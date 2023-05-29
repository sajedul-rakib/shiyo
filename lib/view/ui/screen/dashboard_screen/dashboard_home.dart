import 'package:flutter/material.dart';

import '../../widgets/dashboard_widgets.dart';
import '../../widgets/deshboard_widgets_screen.dart';
import '../../widgets/shipy_widgets.dart';



class TotalTransaction extends StatefulWidget {
  const TotalTransaction({super.key});

  @override
  State<TotalTransaction> createState() => _TotalTransactionState();
}

class _TotalTransactionState extends State<TotalTransaction> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 50,
            child: DeshbordWidgetsScreen(),
          ),
          SizedBox(height: 15),
          Expanded(
            flex: 40,
            child: DashboardWidgetPage(),
          ),
          Expanded(
            flex: 8,
            child: ShipyWidgetsPage(),
          ),
        ],
      ),
    );
  }
}
