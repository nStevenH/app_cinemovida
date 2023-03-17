import 'package:app_cinemovida/src/common/widgets/choice_cinema_widget.dart';
import 'package:app_cinemovida/src/common/widgets/filter_seance_widget.dart';
import 'package:app_cinemovida/src/common/widgets/list_day_widget.dart';
import 'package:flutter/material.dart';

class OnDisplayScreen extends StatelessWidget {
  const OnDisplayScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          ChoiceCinemaWidget(),
          ListDayWidget(),
          FilterSeanceWidget(),
        ],
      ),
      floatingActionButton: FloatingActionButton(

        child: const Icon(Icons.read_more_outlined),
        onPressed: () {},
      ),
    );
  }
}
