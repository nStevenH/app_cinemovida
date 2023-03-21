import 'package:app_cinemovida/src/common/components/container_reusable.dart';
import 'package:app_cinemovida/src/constants/sizes.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:app_cinemovida/src/constants/colors.dart';

class EventMovieWidget extends StatelessWidget {
  const EventMovieWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ReusableContainer(
      width: 1.sw,
      padding: 8.sp,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {},
            child: CachedNetworkImage(
              alignment: Alignment.topLeft,
              width: 80.w,
              imageUrl:
                  'https://image.tmdb.org/t/p/w500/6CoRTJTmijhBLJTUNoVSUNxZMEI.jpg',
              fit: BoxFit.cover,
              placeholder: (context, url) => const CircularProgressIndicator(),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ),
          gapH4,
          Text(
              'Les 4 Fantastiques',
              style: TextStyle(
                fontSize: Sizes.p10,
                color: black,
              )),
          gapH4,
          Text(
              'De benard dupond',
              style: TextStyle(
                fontSize: Sizes.p10,
                color: grey,
              )),
        ],
      ),
    );
  }
}
