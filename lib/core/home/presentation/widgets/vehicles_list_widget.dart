import 'package:flutter/material.dart';
import 'package:movemate_shipment/core/app_colors.dart';

class VehicleListWidget extends StatelessWidget {
  const VehicleListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: [
           VehicleItem(
             title: 'Ocean Freight',
             subTitle: 'International',
           ),
           VehicleItem(
             title: 'Cargo Freight',
             subTitle: 'Relaible',
           ),
           VehicleItem(
             title: 'Air Freight',
             subTitle: 'International',
           ),
        ],
      ),
    );
  }
}

class VehicleItem extends StatelessWidget {
  final String title ;
  final String subTitle ;
  const VehicleItem({
    super.key, required this.title, required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 15),
      width: 160,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                  fontWeight: FontWeight.w400, fontSize: 16, color: buntingBlue),
            ),

            Text(
              subTitle,
              style: const TextStyle(
                  fontWeight: FontWeight.w400, fontSize: 13, color: bombayGrey),
            ),
          ],
        ),
      ) ,
    );
  }
}