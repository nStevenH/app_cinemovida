import 'package:flutter/material.dart';
import 'package:app_cinemovida/src/features/pages/tickets/domain/controller/tabbar_controller.dart';



class TicketsScreen extends StatelessWidget {
  const TicketsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          MonTabBar(),
        ],
      )
    );
  }
}
