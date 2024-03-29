import 'package:app_cinemovida/src/common/components/container_reusable.dart';
import 'package:app_cinemovida/src/constants/colors.dart';
import 'package:app_cinemovida/src/constants/sizes.dart';
import 'package:app_cinemovida/src/constants/style.dart';
import 'package:app_cinemovida/src/features/presentation/widgets/choice_cinema_widget.dart';
import 'package:app_cinemovida/src/features/presentation/widgets/movie_event_widget.dart';
import 'package:app_cinemovida/src/features/presentation/widgets/movie_info_event_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ComingSoonScreen extends StatelessWidget {
  const ComingSoonScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            children: [
              gapH30,
              ReusableContainer(
                color: yellow,
                height: 28.h,
                padding: SizesR.p8,
                width: double.infinity,
                child: Text('LES PLUS ATTENDUS', style: textTitleWC),
              ),
              const EventMovieWidget(),
              ReusableContainer(
                color: const Color(0xFFEAEAEA),
                height: 20.h,
                width: double.infinity,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: SizesW.p8),
                    child: Text(
                      '22 Mars 2022',
                      style: textBodyB,
                    ),
                  ),
                ),
              ),
              const MovieInfoEventWidget(),
              ReusableContainer(
                color: const Color(0xFFEAEAEA),
                height: 20.h,
                width: double.infinity,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: SizesW.p8),
                    child: Text(
                      '23 Mars 2023',
                      style: textBodyB,
                    ),
                  ),
                ),
              ),
              const MovieInfoEventWidget(),
              const MovieInfoEventWidget(),
              const MovieInfoEventWidget(),
              ReusableContainer(
                color: const Color(0xFFEAEAEA),
                height: 20.h,
                width: double.infinity,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: SizesW.p8),
                    child: Text(
                      '29 Mars 2023',
                      style: textBodyB,
                    ),
                  ),
                ),
              ),
              const MovieInfoEventWidget(),
              const MovieInfoEventWidget(),
              const MovieInfoEventWidget(),
              ReusableContainer(
                color: const Color(0xFFEAEAEA),
                height: 20.h,
                width: double.infinity,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: SizesW.p8),
                    child: Text(
                      '04 Avril 2023',
                      style: textBodyB,
                    ),
                  ),
                ),
              ),
              const MovieInfoEventWidget(),
            ],
          ),
          const ChoiceCinemaWidget(),
        ],
      ),
    );
  }
}