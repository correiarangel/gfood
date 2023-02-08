import 'package:face_offood/face_offood.dart';
import 'package:flutter/material.dart';

class FaceOfFoodBottonNavigationBar extends StatefulWidget {
  final List<FaceOfFoodBottonBarItem> itens;
  final void Function(int index) onIndexSelected;
  const FaceOfFoodBottonNavigationBar({
    Key? key,
    required this.itens,
    required this.onIndexSelected,
  }) : super(key: key);

  @override
  State<FaceOfFoodBottonNavigationBar> createState() =>
      _FaceOfFoodBottonNavigationBarState();
}

class _FaceOfFoodBottonNavigationBarState
    extends State<FaceOfFoodBottonNavigationBar> {
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.black87,
      unselectedItemColor: Colors.black38,
      showSelectedLabels: true,
      currentIndex: selected,
      
      items: List.from(
        widget.itens.map(
          (item) => FaceOfFoodBottonBarItem(
            icon: item.icon,
            label: item.label,
            activeIcon: item.activeIcon
          ),
        ),
      ),
      onTap: (index) => setState(() {
        widget.onIndexSelected(index);
        selected = index;
      }),
    );
  }
}
