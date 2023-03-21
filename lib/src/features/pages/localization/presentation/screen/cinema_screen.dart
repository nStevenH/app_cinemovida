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
                padding: EdgeInsets.all(SizesR.p8),
                decoration: BoxDecoration(
                  color: white,
                  border: Border.all(
                    color: divider,
                    width: 0.5,
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "ZAC du Mas Balande, Route d'Argeles, 66000 Perpignan",
                          style: textBodyG,
                        ),
                      ],
                    ),
                    gapH4,
                    Row(
                      children: [
                        Container(
                          height: 23.h,
                          width: 0.45.sw,
                          color: black,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FaIcon(
                                FontAwesomeIcons.map,
                                color: icon,
                                size: Sizes.p14,
                              ),
                              gapW4,
                              Text(
                                'ITINÉRAIRE',
                                style: textDayW,
                              ),
                            ],
                          ),
                        ),
                        gapW16,
                        Container(
                          height: 23.h,
                          width: 0.45.sw,
                          color: black,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FaIcon(
                                FontAwesomeIcons.pen,
                                color: icon,
                                size: Sizes.p12,
                              ),
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
                  ],
                ),
              ),
              gapH8,
              Divider(
                indent: Sizes.p16,
                endIndent: Sizes.p16,
                color: divider,
                thickness: 1,
              ),
              gapH8,
              ReusableContainer(
                color: const Color(0xFFEAEAEA),
                height: 30.h,
                width: 1.sw,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.all(SizesR.p8),
                    child: Text(
                      'Tarifs',
                      style: textTarifs,
                    ),
                  ),
                ),
              ),
              gapH8,
              Container(
                height: 60.h,
                width: 1.sw,
                padding: EdgeInsets.all(SizesR.p8),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 32.h,
                          width: 0.45.sw,
                          color: black,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.euro, color: icon, size: Sizes.p14),
                              gapW4,
                              Text(
                                'NOS TARIFS',
                                style: textDayW,
                              ),
                            ],
                          ),
                        ),
                        gapW16,
                        Container(
                          height: 32.h,
                          width: 0.45.sw,
                          color: black,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FaIcon(
                                FontAwesomeIcons.starOfLife,
                                color: icon,
                                size: Sizes.p12,
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
                  ],
                ),
              ),
              gapH64,
              Divider(
                indent: Sizes.p16,
                endIndent: Sizes.p16,
                color: divider,
                thickness: 0.5,
              ),
            ],
          ),
          const ChoiceCinemaWidget(),
        ],
      ),
    );
  }
}
