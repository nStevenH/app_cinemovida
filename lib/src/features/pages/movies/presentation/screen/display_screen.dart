import 'package:app_cinemovida/src/common/widgets/choice_cinema_widget.dart';
import 'package:app_cinemovida/src/common/widgets/filter_seance_widget.dart';
import 'package:app_cinemovida/src/common/widgets/list_day_widget.dart';
import 'package:app_cinemovida/src/common/widgets/movie_info_event_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OnDisplayScreen extends StatelessWidget {
  const OnDisplayScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          ChoiceCinemaWidget(),
          ListDayWidget(),
          FilterSeanceWidget(),
          MovieInfoEventWidget(),
          MovieInfoEventWidget(),
          MovieInfoEventWidget(),
          MovieInfoEventWidget(),
          MovieInfoEventWidget(),
        ],
      ),
      floatingActionButton: FloatingActionButton(

        child: const Icon(Icons.read_more_outlined),
        onPressed: () {
          context.goNamed('/realtimeMovie');
        },
      ),
    );
  }
}
