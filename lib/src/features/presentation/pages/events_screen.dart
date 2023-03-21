import 'package:app_cinemovida/src/features/presentation/widgets/choice_cinema_widget.dart';
import 'package:app_cinemovida/src/features/presentation/widgets/event_list_widget.dart';
import 'package:flutter/material.dart';

import 'package:app_cinemovida/src/constants/colors.dart';
import 'package:app_cinemovida/src/constants/sizes.dart';


class EventsScreen extends StatelessWidget {
  const EventsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: card,
      body: Stack(
        children: [
          ListView(
            children: [
              gapH56,
              const EventListWidget(textTitle: 'PRINTEMPS DU CINEMA',),
              gapH8,
              const EventListWidget(textTitle: 'CINEPOUSSETTE',),
              gapH8,
              const EventListWidget(textTitle: 'FILM EN VOST',),
              gapH8,
              const EventListWidget(textTitle: 'SME',),
              gapH8,
              const EventListWidget(textTitle: 'ICE IMMERSIVE',),
              gapH8,
              const EventListWidget(textTitle: 'MX4D',),
              gapH8,
              const EventListWidget(textTitle: 'FILM COUP DE COEUR',),
              gapH8,
              const EventListWidget(textTitle: 'MET OPERA',),
              gapH8,
              const EventListWidget(textTitle: 'AVANT-PREMIERE',),
            ],
          ),
          const ChoiceCinemaWidget(),
        ],
      ),
    );
  }
}