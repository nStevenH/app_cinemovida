import 'package:app_cinemovida/src/constants/colors.dart';
import 'package:app_cinemovida/src/constants/sizes.dart';
import 'package:app_cinemovida/src/constants/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MonTabBar extends StatefulWidget {
  const MonTabBar({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MonTabBarState createState() => _MonTabBarState();
}

class _MonTabBarState extends State<MonTabBar>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: yellow,
            height: 45.h,
            child: TabBar(
              controller: _tabController,
              indicatorColor: white,
              tabs: const [
                Tab(
                  text: 'Mes réservations',
                ),
                Tab(
                  text: 'Mes réservations passées',
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                        Icons.movie_creation_outlined,
                        color: grey, size: 96
                    ),
                    gapH8,

                    Column(
                      children: [
                        Text(
                            "Retrouvez ici vos billets achetés sur l'application et",
                          style: textSubtitleG,
                        ),
                        gapH4,
                        Text('présentez les à votre arrivée en salle.',
                          style: textSubtitleG,
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                        Icons.movie_creation_outlined,
                        color: grey,
                        size: 96
                    ),
                    gapH8,
                    Text('Aucune réservation disponible.',
                      style: textSubtitleG,
                    ),
                    gapH16,
                    Text('Retrouvez ici vos précédents achats de billets',
                      style: textSubtitleG,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}