

import 'package:flutter/material.dart';

class LineIndicatorBottomNavbarItems extends StatelessWidget {
  final IconData? icon;
  final String? label;
  final Color? selectedColor;
  final Color? unSelectedColor;
  final double unSelectedFontSize;
  final double selectedIconSize;
  final double unselectedIconSize;

  final double selectedFontSize;
  final Color? splashColor;
  final int? currentIndex;
  final int index;
  final Function(int) onTap;
  final bool enableLineIndicator;
  final double lineIndicatorWidth;


  const LineIndicatorBottomNavbarItems({super.key,
    this.icon,
    this.label,
    this.selectedColor,
    this.unSelectedColor,
    this.unSelectedFontSize = 11,
    this.selectedFontSize = 12,
    this.selectedIconSize = 20,
    this.unselectedIconSize = 15,
    this.splashColor,
    this.currentIndex,
    required this.onTap,
    required this.index,
    this.enableLineIndicator = true,
    this.lineIndicatorWidth = 3,
  });

  @override
  Widget build(BuildContext context) {
    final BottomNavigationBarThemeData bottomTheme =
    BottomNavigationBarTheme.of(context);

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(right: 7),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            splashColor: splashColor ?? Theme.of(context).splashColor,
            onTap: () {
              onTap(index);
            },
            child: Container(
              decoration: BoxDecoration(
                border: enableLineIndicator
                    ? Border(
                  top:  BorderSide(
                    color: currentIndex == index
                        ? selectedColor ??
                        bottomTheme.selectedItemColor!
                        : Colors.transparent,
                    width: lineIndicatorWidth,
                  )

                )
                    : null,
              ),
              padding: const EdgeInsets.symmetric(vertical: 7.0),
              // width: 70,
              // height: 60,
              child: Column(
                children: [
                  Icon(
                    icon,
                    size: currentIndex == index
                        ? selectedIconSize
                        : unselectedIconSize,
                    color: currentIndex == index
                        ? selectedColor ?? bottomTheme.unselectedItemColor
                        : unSelectedColor,
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    '$label',
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: currentIndex == index
                          ? selectedFontSize
                          : unSelectedFontSize,
                      color: currentIndex == index
                          ? selectedColor ?? bottomTheme.unselectedItemColor
                          : unSelectedColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}