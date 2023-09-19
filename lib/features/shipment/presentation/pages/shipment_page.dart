import 'package:flutter/material.dart';
import 'package:movemate_shipment/features/app_colors.dart';
import 'package:movemate_shipment/features/shipment/presentation/widgets/custom_indicator.dart';
import 'package:movemate_shipment/features/shipment/presentation/widgets/shipment_list.dart';

class ShipmentPage extends StatefulWidget {
  const ShipmentPage({super.key});

  @override
  State<ShipmentPage> createState() => _ShipmentPageState();
}

class _ShipmentPageState extends State<ShipmentPage> {
  ValueNotifier<int> tabIndex = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: hintGrey,
        appBar: AppBar(
          backgroundColor: gigasPurple,
          centerTitle: true,
          title: const Text(
            'Shipment history',
            style: TextStyle(
                fontSize: 18, color: hintGrey, fontWeight: FontWeight.bold),
          ),
          bottom: PreferredSize(
            preferredSize: const Size(double.infinity, 40),
            child: ValueListenableBuilder(
              valueListenable: tabIndex,
              builder: (BuildContext context, int value, Widget? child) {
                return TabBar(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  isScrollable: true,
                  indicatorSize: TabBarIndicatorSize.label,
                  unselectedLabelColor: const Color(0XFFA894DD),
                  indicatorPadding: const EdgeInsets.only(top: 10, left: 0),
                  labelPadding: const EdgeInsets.only(
                    right: 15,
                  ),
                  indicatorColor: jaffaOrange,
                  labelColor: Colors.white,
                  onTap: (int index) {
                    tabIndex.value = index;
                  },
                  indicator:
                      const CustomTabIndicator(radius: 0, indicatorHeight: 3),
                  labelStyle: const TextStyle(
                      color: hintGrey,
                      fontWeight: FontWeight.w400,
                      letterSpacing: -0.5,
                      fontSize: 18),
                  unselectedLabelStyle: const TextStyle(
                      color: alabasterGrey,
                      fontWeight: FontWeight.w400,
                      letterSpacing: -0.5,
                      fontSize: 18),
                  tabs: [
                    Tab(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'All',
                            ),
                            const SizedBox(
                              width: 5.0,
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 3),
                              decoration: BoxDecoration(
                                  color: value == 0
                                      ? jaffaOrange
                                      : alabasterGrey.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Text(
                                '12',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,),
                                textAlign: TextAlign.center,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Tab(
                        child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Row(
                        children: [
                          const Text('Completed'),
                          const SizedBox(
                            width: 5.0,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 2),
                            decoration: BoxDecoration(
                                color: value == 1
                                    ? jaffaOrange
                                    : alabasterGrey.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(10)),
                            child: const Text(
                              '5',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w600),
                            ),
                          )
                        ],
                      ),
                    )),
                    Tab(
                        child: Row(
                      children: [
                        const Text('In progress'),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 2),
                          decoration: BoxDecoration(
                              color: value == 2
                                  ? jaffaOrange
                                  : alabasterGrey.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(30)),
                          child: const Text(
                            '3',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w600),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    )),
                    Tab(
                        child: Row(
                      children: [
                        const Text('Pending Order'),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 3),
                          decoration: BoxDecoration(
                              color: value == 3
                                  ? jaffaOrange
                                  : alabasterGrey.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(30)),
                          child: const Text(
                            '4',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w600),
                          ),
                        )
                      ],
                    )),
                    const Tab(
                        child: Row(
                      children: [
                        Text('Cancelled'),
                      ],
                    )),
                  ],
                );
              },
            ),
          ),
          leading: const BackButton(
            color: hintGrey,
          ),
        ),
        body:  const TabBarView(
          children: [
            ShipmentList(),
            ShipmentList(),
            ShipmentList(),
            ShipmentList(),
            ShipmentList(),
          ],
        ),
      ),
    );
  }
}
