import 'package:flutter/material.dart';
import 'package:app_cinemovida/src/constants/colors.dart';
import 'package:app_cinemovida/src/constants/sizes.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cached_network_image/cached_network_image.dart';

class EventListWidget extends ConsumerWidget {
  const EventListWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 145.w,
      width: 1.sw,
      decoration: BoxDecoration(
        color: background,
        border: Border.all(
          color: const Color(0xFFcfcfcf),
          width: 1,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(8.0.sp),
        child: Row(
          children: [
            CachedNetworkImage(
              alignment: Alignment.topLeft,
              width: 75.h,
              imageUrl:
                  'https://image.tmdb.org/t/p/w500/6CoRTJTmijhBLJTUNoVSUNxZMEI.jpg',
              fit: BoxFit.cover,
              placeholder: (context, url) => const CircularProgressIndicator(),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
            gapW8,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                gapH4,
                Text(
                  'PRINTEMPS DU CINEMA',
                  style: TextStyle(
                      fontSize: 12.sp,
                      color: black,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'SEANCES_SPECIALES',
                  style: TextStyle(
                    fontSize: 11.sp,
                    color: yellow,
                  ),
                ),
                Text(
                  'Méga-castillet',
                  style: TextStyle(
                    fontSize: 10.sp,
                    color: grey,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
