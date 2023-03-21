import 'package:app_cinemovida/src/constants/colors.dart';
import 'package:app_cinemovida/src/constants/sizes.dart';
import 'package:app_cinemovida/src/constants/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FilterSeanceWidget extends StatelessWidget {
  const FilterSeanceWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(SizesR.p12),
      child: Container(
        color: yellow,
        height: 30.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.filter_list_outlined,
              color: icon,
            ),
            gapW8,
            Text(
              'FILTRER LES SÉANCES',
              style: textTitleWC,
            ),
          ],
        ),
      ),
    );
  }
}