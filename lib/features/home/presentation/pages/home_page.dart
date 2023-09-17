import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movemate_shipment/features/app_colors.dart';
import 'package:movemate_shipment/features/home/presentation/widgets/vehicles_list_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: hintGrey,
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 135),
        child: AppBar(
          backgroundColor: gigasPurple,
          centerTitle: false,
          titleSpacing: 10,
          leading: const Padding(
            padding: EdgeInsets.only(left: 15.0),
            child: CircleAvatar(
              radius: 3,
              backgroundImage: NetworkImage(
                'https://picsum.photos/200/300',
              ),
            ),
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset('assets/send.svg',
                      height: 14, colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),),
                  const SizedBox(
                    width: 5.0,
                  ),
                  const Text(
                    'Your location',
                    style: TextStyle(fontSize: 13, color: hintGrey),
                  )
                ],
              ),
              const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Wertheimer, Illinois',
                    style: TextStyle(
                        fontSize: 14,
                        color: hintGrey,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    width: 3.0,
                  ),
                  Icon(Icons.keyboard_arrow_down_outlined,
                      size: 16, color: hintGrey),
                ],
              ),
            ],
          ),
          actions: [
            Container(
              margin: const EdgeInsets.only(right: 15),
              padding: const EdgeInsets.all(8),
              decoration:
                  const BoxDecoration(shape: BoxShape.circle, color: hintGrey),
              child: const Icon(Icons.notifications_outlined),
            )
          ],
          bottom: PreferredSize(
            preferredSize: const Size(double.infinity, 40),
            child: Container(
              margin: const EdgeInsets.only(bottom: 20, left: 15, right: 15),
              padding:
                  const EdgeInsets.only(left: 10, top: 5, bottom: 5, right: 7),
              decoration: BoxDecoration(
                color: hintGrey,
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Row(
                children: [
                  const Icon(Icons.search, color: gigasPurple),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    'Enter the receipt number...',
                    style: TextStyle(color: manateeGrey),
                  ),
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                      color: jaffaOrange,
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset(
                      'assets/scan.svg',
                      colorFilter:
                          const ColorFilter.mode(hintGrey, BlendMode.srcIn),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
        shrinkWrap: true,
        children: AnimationConfiguration.toStaggeredList(
          duration: const Duration(milliseconds: 375),
          childAnimationBuilder: (widget) => SlideAnimation(
            horizontalOffset: 50.0,
            child: FadeInAnimation(
              child: widget,
            ),
          ),
          children: [
            const Text(
              'Tracking',
              style: TextStyle(
                  fontWeight: FontWeight.w600, fontSize: 16, color: buntingBlue),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 0,
                    blurRadius: 1,
                    offset: const Offset(0, 0), // changes position of shadow
                  ),
                ],
              ),
              padding: const EdgeInsets.only(top: 15, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Shipment Number',
                              style: TextStyle(color: manateeGrey, fontSize: 12,fontWeight: FontWeight.w500),
                            ),
                            Text(
                              'NEJ20089934122231',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15,
                                  color: buntingBlue),
                            ),
                          ],
                        ),
                        Image.asset(
                          'assets/forklift.png',
                          height: 40,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Divider(
                      color: manateeGrey.withOpacity(0.5),
                      thickness: 0.3,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          fit: FlexFit.tight,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 33,
                                width: 30,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle, color: jaffaOrange),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              const Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Receiver',
                                      style: TextStyle(
                                          color: manateeGrey,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      'Chicago, 6342',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 13,
                                          color: buntingBlue),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Flexible(
                          fit: FlexFit.tight,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Status',
                                style:
                                TextStyle(color: manateeGrey, fontSize: 12),
                              ),
                              Row(
                                mainAxisAlignment:  MainAxisAlignment.end,
                                children: [
                                  Text(
                                    '2 day -3 days',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 13,
                                        color: buntingBlue),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          fit: FlexFit.tight,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 33,
                                width: 30,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle, color: jaffaOrange),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              const Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Receiver',
                                      style: TextStyle(
                                          color: manateeGrey,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      'Chicago, 6342',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 13,
                                          color: buntingBlue),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Flexible(
                          fit: FlexFit.tight,
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Status',
                                  style:
                                  TextStyle(color: manateeGrey, fontSize: 12,fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  'Waiting to collect',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 13,
                                      color: buntingBlue),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Divider(
                    color: manateeGrey.withOpacity(0.5),
                    thickness: 0.3,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.add, color: jaffaOrange, size: 20),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          'Add Stop',
                          style: TextStyle(
                              color: jaffaOrange, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              'Available Vehicles',
              style: TextStyle(
                  fontWeight: FontWeight.w600, fontSize: 16, color: buntingBlue),
            ),
            const SizedBox(
              height: 20,
            ),
            const VehicleListWidget()
          ],
        ),
      ),
    );
  }
}
