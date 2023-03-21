import 'package:app_cinemovida/src/features/presentation/widgets/TabBar_widget.dart';
import 'package:flutter/material.dart';




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