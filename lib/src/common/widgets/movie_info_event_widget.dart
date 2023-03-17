import 'package:app_cinemovida/src/common/components/container_reusable.dart';
import 'package:app_cinemovida/src/constants/colors.dart';
import 'package:app_cinemovida/src/constants/sizes.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MovieInfoEventWidget extends StatelessWidget {
  const MovieInfoEventWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ReusableContainer(
      height: 100.w,
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.all(8.0.sp),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                gapW8,
                CachedNetworkImage(
                  alignment: Alignment.topLeft,
                  imageUrl:
                      'https://image.tmdb.org/t/p/w500/6CoRTJTmijhBLJTUNoVSUNxZMEI.jpg',
                  fit: BoxFit.fitHeight,
                  placeholder: (context, url) =>
                      const CircularProgressIndicator(),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
                gapW4,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Les 4 Fantastiques',
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: black,
                      ),
                    ),
                    gapH4,
                    RichText(
                      text: TextSpan(
                        style: TextStyle(
                          fontSize: 12.sp,
                        ),
                        children: const <TextSpan>[
                          TextSpan(
                            text: 'De',
                            style: TextStyle(color: grey),
                          ),
                          TextSpan(
                            text: ' Charlie Lightening',
                            style: TextStyle(
                              color: blue,
                            ),
                          ),
                        ],
                      ),
                    ),
                    gapH4,
                    RichText(
                      text: const TextSpan(
                        style: TextStyle(
                          fontSize: 10,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'De',
                            style: TextStyle(color: grey),
                          ),
                          TextSpan(
                            text: ' Charlie Lightening',
                            style: TextStyle(
                              color: blue,
                            ),
                          ),
                        ],
                      ),
                    ),
                    gapH4,
                    Text(
                      '01h44 - Concert ',
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Icon(Icons.arrow_right)
          ],
        ),
      ),
    );
  }
}
