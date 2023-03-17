import 'package:app_cinemovida/src/constants/colors.dart';
import 'package:app_cinemovida/src/constants/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class ListDayWidget extends ConsumerWidget {
  const ListDayWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 35.w,
      color: blue,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 180,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(6.0.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    // Add function to change séance movie
                    // Change of color when a day is selected
                  },
                  child: Container(
                    width: 72.h,
                    height: 21.w,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: white,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(50.r),
                    ),
                    // Add format jour + date qui change en fonction de la date du jour
                    child: Center(
                      child: Text(
                          'Mer 01 Mars',
                          style: textDayW
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
