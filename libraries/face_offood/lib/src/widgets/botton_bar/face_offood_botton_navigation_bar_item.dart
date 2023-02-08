import 'package:flutter/material.dart';

class FaceOfFoodBottonBarItem extends BottomNavigationBarItem {
  @override
  final Widget  icon;
  @override
  final Widget  activeIcon;
  @override
  final String label;
  final int? couterBadge;

  FaceOfFoodBottonBarItem({
    this.couterBadge,
    required this.activeIcon,
    required this.icon,
    required this.label,
  }) : super(icon: icon,activeIcon: activeIcon );
}
