import 'package:flutter/material.dart';




class EventsScreen extends StatelessWidget {
  const EventsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: const [
            Text('Evenements')
          ],
        ),
      ),
    );
  }
}
