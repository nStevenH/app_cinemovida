import 'package:app_cinemovida/src/constants/colors.dart';
import 'package:app_cinemovida/src/constants/sizes.dart';
import 'package:app_cinemovida/src/constants/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class ChoiceCinemaWidget extends ConsumerWidget {
  const ChoiceCinemaWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      color: yellow,
      height: 35.w,
      child: Padding(
        padding: EdgeInsets.all(SizesR.p8),
        child: Stack(
          children: [
            Center(
              child: Text(
                'Perpignan Méga Castillet',
                style: textTitleW,
              ),
            ),
            const Align(
              alignment: Alignment.centerRight,
              child: Icon(
                Icons.keyboard_arrow_down_outlined,
                color: icon,
              ),
            ),
          ],
        ),
      ),
    );
  }
}