import 'package:flutter/material.dart';
import 'package:app_cinemovida/src/constants/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TabBarController extends StatefulWidget {
  const TabBarController({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _TabBarControllerState createState() => _TabBarControllerState();
}

class _TabBarControllerState extends State<TabBarController>
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
      body: Container(
        color: yellow,
        height: 35.w,
        child: TabBar(
          indicatorColor: white,
          controller: _tabController,
          padding: EdgeInsets.symmetric(horizontal: 8.0.w),
          tabs: const [
            Tab(text: 'Mes réservations'),
            Tab(text: 'Mes réservations Passées',),
          ],
        ),
      ),
    );
  }
}
