import 'package:app_cinemovida/routing/app_router.dart';
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
    if(index == 0){
      context.goNamed(AppRoute.onDisplay.name);
    } else if (index == 1){
      context.goNamed(AppRoute.comingSoon.name);
    } else if (index == 2){
      context.goNamed(AppRoute.events.name);
    } else if (index == 3){
      context.goNamed(AppRoute.tickets.name);
    } else if (index == 4){
      context.goNamed(AppRoute.cinema.name);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: widget.appBar,
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