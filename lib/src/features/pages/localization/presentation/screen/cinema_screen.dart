import 'package:app_cinemovida/src/common/components/container_reusable.dart';
import 'package:flutter/material.dart';
import 'package:app_cinemovida/src/common/widgets/choice_cinema_widget.dart';
import 'package:app_cinemovida/src/constants/colors.dart';
import 'package:app_cinemovida/src/constants/sizes.dart';
import 'package:app_cinemovida/src/constants/style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LocalizationScreen extends StatelessWidget {
  const LocalizationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            children: [
              gapH64,
              Container(
                height: 60.h,
                width: 1.sw,
                decoration: BoxDecoration(
                  color: white,
                  border: Border.all(
                    color: divider,
                    width: 1,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(8.0.sp),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "ZAC du Mas Balande, Route d'Argeles, 66000 Perpignan",
                            style: textBodyG,
                          ),
                        ],
                      ),
                      gapH8,
                      SizedBox(
                        width: 1.sw,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 21.h,
                              width: 160.w,
                              color: black,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.location_on,
                                    color: icon,
                                    size: 14,
                                  ),
                                  gapW4,
                                  Text(
                                    'ITINÉRAIRE',
                                    style: textDayW,
                                  ),
                                ],
                              ),
                            ),
                            gapW4,
                            Container(
                              height: 21.h,
                              width: 160.w,
                              color: black,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const FaIcon(FontAwesomeIcons.pen, color: icon, size: 12),
                                  gapW4,
                                  Text(
                                    'CONTACT',
                                    style: textDayW,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              gapH8,
              const Divider(
                indent: 16,
                endIndent: 16,
                color: divider,
                thickness: 1.5,
              ),
              ReusableContainer(
                color: const Color(0xFFEAEAEA),
                height: 20.w,
                width: double.infinity,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      'Tarifs',
                      style: textTarifs,
                    ),
                  ),
                ),
              ),
              Container(
                height: 60.h,
                width: 1.sw,
                decoration: BoxDecoration(
                  color: white,
                  border: Border.all(
                    color: divider,
                    width: 1,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(8.0.sp),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 1.sw,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 25.h,
                              width: 160.w,
                              color: black,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(Icons.euro, color: icon, size: 14.sp),
                                  gapW4,
                                  Text(
                                    'NOS TARIFS',
                                    style: textDayW,
                                  ),
                                ],
                              ),
                            ),
                            gapW4,
                            Container(
                              height: 25.h,
                              width: 160.w,
                              color: black,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const FaIcon(
                                    FontAwesomeIcons.starOfLife,
                                    color: icon,
                                    size: 12,
                                  ),
                                  gapW4,
                                  Text(
                                    'OFFRES SPÉCIALES',
                                    style: textDayW,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const ChoiceCinemaWidget(),
        ],
      ),
    );
  }
}
