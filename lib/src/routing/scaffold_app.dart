import 'package:app_cinemovida/src/constants/sizes.dart';
import 'package:app_cinemovida/src/routing/app_router.dart';
import 'package:app_cinemovida/src/widgets/appbar_widget.dart';
import 'package:app_cinemovida/src/constants/strings.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ScaffoldBottomNavBar extends StatefulWidget {
  const ScaffoldBottomNavBar({Key? key, required this.child, this.appBar}) : super(key: key);
  final Widget child;
  final AppBar? appBar;

  @override
  State<ScaffoldBottomNavBar> createState() => _ScaffoldBottomNavBarState();
}

class _ScaffoldBottomNavBarState extends State<ScaffoldBottomNavBar> {

  /// The index of the currently selected [BottomNavigationBarItem].

  int _selectedIndex = 0;

  /// The [BottomNavigationBarItem]s to display.

  void _tap (BuildContext context, int index) {
    if (index == _selectedIndex) {
      return;
    }
    setState(() => _selectedIndex = index);
    switch (index) {
      case 0:
        context.goNamed(AppRoute.onDisplay.name);
        break;
      case 1:
        context.goNamed(AppRoute.comingSoon.name);
        break;
      case 2:
        context.goNamed(AppRoute.events.name);
        break;
      case 3:
        context.goNamed(AppRoute.tickets.name);
        break;
      case 4:
        context.goNamed(AppRoute.cinema.name);
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
          title: Image.asset(logo, fit: BoxFit.contain, width: Sizes.p24,),
          icon: Icons.person_outline,
          onPressed: () {}
      ),
      body: widget.child,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) => _tap(context, index),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.movie_filter_outlined),
            label: "À l'affiche",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today_outlined),
            label: 'À venir',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.flag_outlined),
            label: 'Évenements',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card_outlined),
            label: 'Mes billets',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on_outlined),
            label: 'Cinémas',
          ),
        ],
      ),
    );
  }
}