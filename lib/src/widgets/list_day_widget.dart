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
      height: 35.h,
      color: blue,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 180,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(8.0.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    // Add function to change séance movie
                    // Change of color when a day is selected
                  },
                  child: Container(
                    width: 80.w,
                    height: 25.w,
                    decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(45),
                    ),
                    // Add format jour + date qui change en fonction de la date du jour
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.all(4.0.w),
                        child: Text(
                            'Mer 01 Mars',
                            style: textDayB
                        ),
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
