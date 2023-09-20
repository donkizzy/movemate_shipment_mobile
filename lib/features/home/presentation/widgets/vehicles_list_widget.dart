import 'package:flutter/material.dart';
import 'package:movemate_shipment/features/app_colors.dart';

class VehicleListWidget extends StatelessWidget {
  const VehicleListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: const [
           VehicleItem(
             title: 'Ocean Freight',
             subTitle: 'International',
             image: 'assets/cargo-ship.png',
           ),
           VehicleItem(
             title: 'Cargo Freight',
             subTitle: 'Relaible',
             image: 'assets/cargo-truck.png',
           ),
           VehicleItem(
             title: 'Air Freight',
             subTitle: 'International',
             image: 'assets/cargo-ship.png',
           ),
        ],
      ),
    );
  }
}

class VehicleItem extends StatelessWidget {
  final String title ;
  final String subTitle ;
  final String image ;
  const VehicleItem({
    super.key, required this.title, required this.subTitle, required this.image,
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
                  fontWeight: FontWeight.w500, fontSize: 16, color: buntingBlue),
            ),

            Text(
              subTitle,
              style: const TextStyle(
                  fontWeight: FontWeight.w500, fontSize: 13, color: manateeGrey),
            ),
            Image.asset(image)
          ],
        ),
      ) ,
    );
  }
}
