import 'package:flutter/material.dart';

class IconFaceBar extends StatelessWidget {
  final Widget icon;
  final int couterBadge;
  const IconFaceBar({
    Key? key,
    required this.icon,
    required this.couterBadge,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (couterBadge > 0) {
      return Stack(
        clipBehavior: Clip.none,
        children: [
          icon,
          Positioned(
              right: -5,
              top: -5,
              child: CircleAvatar(
                radius: 9,
                backgroundColor: Colors.red,
                child: Text(
                  '$couterBadge',
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
              ))
        ],
      );
    }
    return icon;
  }
}
