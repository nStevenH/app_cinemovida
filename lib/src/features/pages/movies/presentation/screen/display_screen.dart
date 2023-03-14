import 'package:app_cinemovida/src/constants/sizes.dart';
import 'package:flutter/material.dart';

class OnDisplayScreen extends StatelessWidget {
  const OnDisplayScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("À l'affiche...", style : TextStyle(fontSize: Sizes.p32),),
            gapH16,
            Text('Coming soon...', style: TextStyle(fontSize: Sizes.p24),),
          ],
        ),
      ),
    );
  }
}
