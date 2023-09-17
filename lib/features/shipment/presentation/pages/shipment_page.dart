import 'package:flutter/material.dart';
import 'package:movemate_shipment/features/app_colors.dart';

class ShipmentPage extends StatefulWidget {
  const ShipmentPage({super.key});

  @override
  State<ShipmentPage> createState() => _ShipmentPageState();
}

class _ShipmentPageState extends State<ShipmentPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: gigasPurple,
          centerTitle: true,
          title: const Text(
            'Shipment History',
            style: TextStyle(
                fontSize: 15, color: hintGrey, fontWeight: FontWeight.w700),
          ),
          bottom: TabBar(
            padding: EdgeInsets.zero,
            isScrollable: true,
            indicatorSize: TabBarIndicatorSize.label,
            unselectedLabelColor: const Color(0XFFA894DD),
            indicatorPadding: const EdgeInsets.only(top: 10),
            indicatorColor: jaffaOrange,
            indicatorWeight: 3,

            labelColor: Colors.white,
            labelStyle: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.w500, fontSize: 15),
            tabs: [
              Tab(
                  child: Row(
                    children: [
                      const Text('All'),
                      const SizedBox(width: 5.0,),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 3),
                        decoration: BoxDecoration(
                            color: jaffaOrange,
                          borderRadius: BorderRadius.circular(30)
                        ),
                        child: const Text('12'),
                      )
                    ],
                  ),
                 ),
               Tab(child: Row(
                children: [
                  const Text('Completed'),
                  const SizedBox(width: 5.0,),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 3),
                    decoration: BoxDecoration(
                        color: jaffaOrange,
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: const Text('12'),
                  )
                ],
              )),
               Tab(child: Row(
                 children: [
                   const Text('In Progress'),
                   const SizedBox(width: 5.0,),
                   Container(
                     padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 3),
                     decoration: BoxDecoration(
                         color: jaffaOrange,
                         borderRadius: BorderRadius.circular(30)
                     ),
                     child: const Text('12'),
                   )
                 ],
               )),
              Tab(child: Row(
                children: [
                  const Text('Pending'),
                  const SizedBox(width: 5.0,),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 3),
                    decoration: BoxDecoration(
                        color: jaffaOrange,
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: const Text('12'),
                  )
                ],
              )),
               Tab(child: Row(
                children: [
                  const Text('Cancelled'),
                  const SizedBox(width: 5.0,),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 3),
                    decoration: BoxDecoration(
                        color: jaffaOrange,
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: const Text('12'),
                  )
                ],
              )),
            ],
          ),
          leading: const BackButton(
            color: hintGrey,
          ),
        ),
        body: const TabBarView(
          children: [
            SizedBox.shrink(),
            SizedBox.shrink(),
            SizedBox.shrink(),
            SizedBox.shrink(),
            SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
