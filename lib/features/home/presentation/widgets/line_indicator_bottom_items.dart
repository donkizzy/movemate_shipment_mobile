import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movemate_shipment/features/app_colors.dart';

class LineIndicatorBottomNavbarItems extends StatelessWidget {
  final IconData icon;
  final String? label;
  final Color? splashColor;
  final int? currentIndex;
  final int index;
  final Function(int) onTap;
  final bool enableLineIndicator;
  final double lineIndicatorWidth;

  const LineIndicatorBottomNavbarItems({
    super.key,
    required this.icon,
    this.label,
    this.splashColor,
    this.currentIndex,
    required this.onTap,
    required this.index,
    this.enableLineIndicator = true,
    this.lineIndicatorWidth = 3,
  });

  @override
  Widget build(BuildContext context) {
    var isSelected = currentIndex == index;
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
                        top: BorderSide(
                        color: isSelected ? gigasPurple : Colors.transparent,
                        width: lineIndicatorWidth,
                      ))
                    : null,
              ),
              padding: const EdgeInsets.symmetric(vertical: 7.0),
              // width: 70,
              // height: 60,
              child: Column(
                children: [
                   Icon(
                     icon,
                    size:28,
                    color: isSelected
                        ? gigasPurple
                        : bombayGrey,
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    '$label',
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize:14,
                      color: isSelected ? gigasPurple : bombayGrey,
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
