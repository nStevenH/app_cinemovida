import 'package:flutter/material.dart';


class TicketsScreen extends StatelessWidget {
  const TicketsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: const [
            Text('Mes billets')
          ],
        ),
      ),
    );
  }
}
