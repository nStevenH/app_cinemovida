import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {

  final VoidCallback? onPressed;
  final Widget title;

  const AppBarWidget({
    Key? key,
    this.icon,
    required this.onPressed,
    required this.title,
    this.leading
  }) : super(key: key);

  final IconData? icon;
  final Widget? leading;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: leading,
      title: title,
      actions: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(icon),
        ),
      ],
    );
  }
  @override
  Size get preferredSize => AppBar().preferredSize;
}