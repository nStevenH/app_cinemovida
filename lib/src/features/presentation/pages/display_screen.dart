import 'package:app_cinemovida/src/constants/sizes.dart';
import 'package:app_cinemovida/src/features/presentation/widgets/choice_cinema_widget.dart';
import 'package:app_cinemovida/src/features/presentation/widgets/filter_seance_widget.dart';
import 'package:app_cinemovida/src/features/presentation/widgets/list_day_widget.dart';
import 'package:app_cinemovida/src/features/presentation/widgets/movie_info_event_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OnDisplayScreen extends StatelessWidget {
  const OnDisplayScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            children: [
              gapH30,
              const ListDayWidget(),
              const FilterSeanceWidget(),
              const MovieInfoEventWidget(),
              const MovieInfoEventWidget(),
              const MovieInfoEventWidget(),
              const MovieInfoEventWidget(),
              const MovieInfoEventWidget(),
              const MovieInfoEventWidget(),
              const MovieInfoEventWidget(),
              const MovieInfoEventWidget(),
              const MovieInfoEventWidget(),

            ],
          ),
          const ChoiceCinemaWidget(),

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
