import 'package:clinic_app/common/constants/style.dart';
import 'package:flutter/material.dart';

class CustomRails extends StatelessWidget {
  final List<NavigationRailDestination> items;
  final int selectedIndex;
  final Function(int) onTap;

  const CustomRails({Key? key, required this.items, required this.selectedIndex, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NavigationRail(
      selectedIconTheme: IconThemeData(color: active, size: 30),
      selectedLabelTextStyle: TextStyle(color: active),
      unselectedIconTheme: IconThemeData(color: lightGrey),
      unselectedLabelTextStyle: TextStyle(color: lightGrey),
      labelType: NavigationRailLabelType.selected,
      selectedIndex: selectedIndex,
      onDestinationSelected: onTap,
      destinations: items,
    );
  }
}
