import 'package:flutter/material.dart';
import 'package:style_ui/theme/colors.dart';
class BottomBar extends StatelessWidget {
  final int index;
  final Function(int?) onTap;
  const BottomBar({
    Key? key,
    required this.index,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: index,
      onTap: onTap,
      selectedItemColor: textF,
      unselectedItemColor: Colors.white,
      backgroundColor: Colors.transparent,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.notifications_outlined),label: 'Notification'),
        BottomNavigationBarItem(icon: Icon(Icons.favorite_border_outlined),label: 'Favorite'),
        BottomNavigationBarItem(icon: Icon(Icons.person_outlined),label: 'Personal'),
      ],
    );
  }
}
