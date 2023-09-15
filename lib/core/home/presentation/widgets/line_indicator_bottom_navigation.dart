library custom_line_indicator_bottom_navbar;

import 'package:flutter/material.dart';
import 'package:movemate_shipment/core/home/presentation/widgets/line_indicator_bottom_item.dart';
import 'package:movemate_shipment/core/home/presentation/widgets/line_indicator_bottom_items.dart';


class LineIndicatorBottomNavbar extends StatelessWidget {
  final Color? backgroundColor;
  final List<LineIndicatorBottomBarItems> customBottomBarItems;
  final Color? selectedColor;
  final Color? unSelectedColor;
  final double unselectedFontSize;
  final Color? splashColor;
  final int currentIndex;
  final bool enableLineIndicator;
  final double lineIndicatorWidth;
  final Function(int) onTap;
  final double selectedFontSize;
  final double selectedIconSize;
  final double unselectedIconSize;
  final LinearGradient? gradient;

  const LineIndicatorBottomNavbar({super.key,
    this.backgroundColor,
    this.selectedColor,
    required this.customBottomBarItems,
    this.unSelectedColor,
    this.unselectedFontSize = 11,
    this.selectedFontSize = 12,
    this.selectedIconSize = 20,
    this.unselectedIconSize = 15,
    this.splashColor,
    this.currentIndex = 0,
    required this.onTap,
    this.enableLineIndicator = true,
    this.lineIndicatorWidth = 3,
    this.gradient,
  });
  @override
  Widget build(BuildContext context) {
    final BottomNavigationBarThemeData bottomTheme =
    BottomNavigationBarTheme.of(context);
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: backgroundColor ?? bottomTheme.backgroundColor,
        gradient: gradient,
      ),
      child: SingleChildScrollView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            for (int i = 0; i < customBottomBarItems.length; i++) ...[
              Expanded(
                child: LineIndicatorBottomNavbarItems(
                  selectedColor: selectedColor,
                  unSelectedColor: unSelectedColor,
                  icon: customBottomBarItems[i].icon,
                  label: customBottomBarItems[i].label,
                  unSelectedFontSize: unselectedFontSize,
                  selectedFontSize: selectedFontSize,
                  unselectedIconSize: unselectedIconSize,
                  selectedIconSize: selectedIconSize,
                  splashColor: splashColor,
                  currentIndex: currentIndex,
                  enableLineIndicator: enableLineIndicator,
                  lineIndicatorWidth: lineIndicatorWidth,
                  index: i,
                  onTap: onTap,
                ),
              ),
            ]
          ],
        ),
      ),
    );
  }
}
