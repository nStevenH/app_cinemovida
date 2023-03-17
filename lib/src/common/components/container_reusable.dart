import 'package:flutter/material.dart';

class ReusableContainer extends StatelessWidget {
  const ReusableContainer({Key? key,

    this.height,
    this.width,
    this.padding,
    this.color,
    required this.child,

  }) : super(key: key);

  final Color? color;
  final double? height;
  final double? width;
  final Widget child;
  final double? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: height,
      width: width,
      child: Padding(
        padding: EdgeInsets.all(padding ?? 0),
        child: child
      ),
    );
  }
}
