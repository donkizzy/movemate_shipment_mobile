
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movemate_shipment/features/app_colors.dart';

class ShipmentList extends StatefulWidget {
  const ShipmentList({super.key});

  @override
  State<ShipmentList> createState() => _ShipmentListState();
}

class _ShipmentListState extends State<ShipmentList> {
  @override
  Widget build(BuildContext context) {
    return AnimationLimiter(
      child: ListView(
        padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
        children:  AnimationConfiguration.toStaggeredList(
          duration: const Duration(milliseconds: 300),
          childAnimationBuilder: (widget) => SlideAnimation(
           // curve: Curves.easeIn,
            curve: Curves.ease,

            horizontalOffset:  0.0,
            verticalOffset:  50,

            //duration: ,
            child: FadeInAnimation(
              child: widget,
            ),
          ),
          children: [
            const Text(
              'Shipments',
              style: TextStyle(
                  fontWeight: FontWeight.w700, fontSize: 18, color: buntingBlue),
            ),
            const SizedBox(height: 20,),
            Container(
              margin: const EdgeInsets.only(bottom: 20),
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
              padding: const EdgeInsets.only(top: 15, bottom: 10, left: 15, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FittedBox(
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 2,horizontal: 10),
                      decoration: BoxDecoration(
                          color: alabasterGrey,
                          borderRadius: BorderRadius.circular(30)
                      ),
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/sync.svg',height: 10,colorFilter: const ColorFilter.mode(
                              downeyGreen, BlendMode.srcIn)),
                          const SizedBox(width: 10,),
                          const Text('in-progress',style: TextStyle(color: downeyGreen,fontWeight: FontWeight.w600),)
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Flexible(
                        flex: 2,
                        fit: FlexFit.tight,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Arriving Today!',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 18, color: buntingBlue),
                            ),
                            SizedBox(height: 5,),
                            Text(
                              'Your delivery,#NEJ20089934122231 from Atlanta, is arriving today!',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 13, color: manateeGrey),
                            ),
                          ],
                        ),
                      ),
                      Flexible(
                          flex: 1,
                          child: SvgPicture.asset('assets/carton.svg',height: 65,width: 65,))

                    ],
                  ),
                  const SizedBox(height: 15,),
                  Row(
                    children: [
                      const Text(
                        '\$1400 USD',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 13, color: gigasPurple),
                      ),
                      Container(
                        margin:const EdgeInsets.symmetric(horizontal:5),
                        padding: const EdgeInsets.all(2),
                        decoration:  BoxDecoration(
                            color: manateeGrey.withOpacity(0.5),
                            shape: BoxShape.circle
                        ),
                      ),
                      const Text(
                        'Sep 20,2023',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 12, color: buntingBlue),
                      ),

                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 20),
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
              padding: const EdgeInsets.only(top: 15, bottom: 10, left: 15, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FittedBox(
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 2,horizontal: 10),
                      decoration: BoxDecoration(
                          color: alabasterGrey,
                          borderRadius: BorderRadius.circular(30)
                      ),
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/time-rewind.svg',height: 10,colorFilter: const ColorFilter.mode(
                              jaffaOrange, BlendMode.srcIn)),
                          const SizedBox(width: 10,),
                          const Text('pending',style: TextStyle(color: jaffaOrange,fontWeight: FontWeight.w600),)
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Flexible(
                        flex: 2,
                        fit: FlexFit.tight,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Arriving Today!',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 18, color: buntingBlue),
                            ),
                            SizedBox(height: 5,),
                            Text(
                              'Your delivery,#NEJ20089934122231 from Atlanta, is arriving today!',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 13, color: manateeGrey),
                            ),
                          ],
                        ),
                      ),
                      Flexible(
                          flex: 1,
                          child: SvgPicture.asset('assets/carton.svg',height: 65,width: 65,))

                    ],
                  ),
                  const SizedBox(height: 15,),
                  Row(
                    children: [
                      const Text(
                        '\$650 USD',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 13, color: gigasPurple),
                      ),
                      Container(
                        margin:const EdgeInsets.symmetric(horizontal:5),
                        padding: const EdgeInsets.all(2),
                        decoration:  BoxDecoration(
                            color: manateeGrey.withOpacity(0.5),
                            shape: BoxShape.circle
                        ),
                      ),
                      const Text(
                        'Sep 20,2023',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 12, color: buntingBlue),
                      ),

                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 20),
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
              padding: const EdgeInsets.only(top: 15, bottom: 10, left: 15, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FittedBox(
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 2,horizontal: 10),
                      decoration: BoxDecoration(
                          color: alabasterGrey,
                          borderRadius: BorderRadius.circular(30)
                      ),
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/time-rewind.svg',height: 10,colorFilter: const ColorFilter.mode(
                              jaffaOrange, BlendMode.srcIn)),
                          const SizedBox(width: 10,),
                          const Text('pending',style: TextStyle(color: jaffaOrange,fontWeight: FontWeight.w600),)
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Flexible(
                        flex: 2,
                        fit: FlexFit.tight,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Arriving Today!',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 18, color: buntingBlue),
                            ),
                            SizedBox(height: 5,),
                            Text(
                              'Your delivery,#NEJ20089934122231 from Atlanta, is arriving today!',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 13, color: manateeGrey),
                            ),
                          ],
                        ),
                      ),
                      Flexible(
                          flex: 1,
                          child: SvgPicture.asset('assets/carton.svg',height: 65,width: 65,))

                    ],
                  ),
                  const SizedBox(height: 15,),
                  Row(
                    children: [
                      const Text(
                        '\$650 USD',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 13, color: gigasPurple),
                      ),
                      Container(
                        margin:const EdgeInsets.symmetric(horizontal:5),
                        padding: const EdgeInsets.all(2),
                        decoration:  BoxDecoration(
                            color: manateeGrey.withOpacity(0.5),
                            shape: BoxShape.circle
                        ),
                      ),
                      const Text(
                        'Sep 20,2023',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 12, color: buntingBlue),
                      ),

                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 20),
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
              padding: const EdgeInsets.only(top: 15, bottom: 10, left: 15, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FittedBox(
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 2,horizontal: 10),
                      decoration: BoxDecoration(
                          color: alabasterGrey,
                          borderRadius: BorderRadius.circular(30)
                      ),
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/sync.svg',height: 10,colorFilter: const ColorFilter.mode(
                              wedgeWoodBlue, BlendMode.srcIn)),
                          const SizedBox(width: 10,),
                          const Text('in-progress',style: TextStyle(color: wedgeWoodBlue,fontWeight: FontWeight.w600),)
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Flexible(
                        flex: 2,
                        fit: FlexFit.tight,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Arriving Today!',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 18, color: buntingBlue),
                            ),
                            SizedBox(height: 5,),
                            Text(
                              'Your delivery,#NEJ20089934122231 from Atlanta, is arriving today!',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 13, color: manateeGrey),
                            ),
                          ],
                        ),
                      ),
                      Flexible(
                          flex: 1,
                          child: SvgPicture.asset('assets/carton.svg',height: 65,width: 65,))

                    ],
                  ),
                  const SizedBox(height: 15,),
                  Row(
                    children: [
                      const Text(
                        '\$230 USD',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 13, color: gigasPurple),
                      ),
                      Container(
                        margin:const EdgeInsets.symmetric(horizontal:5),
                        padding: const EdgeInsets.all(2),
                        decoration:  BoxDecoration(
                            color: manateeGrey.withOpacity(0.5),
                            shape: BoxShape.circle
                        ),
                      ),
                      const Text(
                        'Sep 20,2023',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 12, color: buntingBlue),
                      ),

                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 20),
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
              padding: const EdgeInsets.only(top: 15, bottom: 10, left: 15, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FittedBox(
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 2,horizontal: 10),
                      decoration: BoxDecoration(
                          color: alabasterGrey,
                          borderRadius: BorderRadius.circular(30)
                      ),
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/sync.svg',height: 10,colorFilter: const ColorFilter.mode(
                              wedgeWoodBlue, BlendMode.srcIn)),
                          const SizedBox(width: 10,),
                          const Text('in-progress',style: TextStyle(color: wedgeWoodBlue,fontWeight: FontWeight.w600),)
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Flexible(
                        flex: 2,
                        fit: FlexFit.tight,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Arriving Today!',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 18, color: buntingBlue),
                            ),
                            SizedBox(height: 5,),
                            Text(
                              'Your delivery,#NEJ20089934122231 from Atlanta, is arriving today!',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 13, color: manateeGrey),
                            ),
                          ],
                        ),
                      ),
                      Flexible(
                          flex: 1,
                          child: SvgPicture.asset('assets/carton.svg',height: 65,width: 65,))

                    ],
                  ),
                  const SizedBox(height: 15,),
                  Row(
                    children: [
                      const Text(
                        '\$230 USD',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 13, color: gigasPurple),
                      ),
                      Container(
                        margin:const EdgeInsets.symmetric(horizontal:5),
                        padding: const EdgeInsets.all(2),
                        decoration:  BoxDecoration(
                            color: manateeGrey.withOpacity(0.5),
                            shape: BoxShape.circle
                        ),
                      ),
                      const Text(
                        'Sep 20,2023',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 12, color: buntingBlue),
                      ),

                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 20),
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
              padding: const EdgeInsets.only(top: 15, bottom: 10, left: 15, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FittedBox(
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 2,horizontal: 10),
                      decoration: BoxDecoration(
                          color: alabasterGrey,
                          borderRadius: BorderRadius.circular(30)
                      ),
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/sync.svg',height: 10,colorFilter: const ColorFilter.mode(
                              downeyGreen, BlendMode.srcIn)),
                          const SizedBox(width: 10,),
                          const Text('in-progress',style: TextStyle(color: downeyGreen,fontWeight: FontWeight.w600),)
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Flexible(
                        flex: 2,
                        fit: FlexFit.tight,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Arriving Today!',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 18, color: buntingBlue),
                            ),
                            SizedBox(height: 5,),
                            Text(
                              'Your delivery,#NEJ20089934122231 from Atlanta, is arriving today!',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 13, color: manateeGrey),
                            ),
                          ],
                        ),
                      ),
                      Flexible(
                          flex: 1,
                          child: SvgPicture.asset('assets/carton.svg',height: 65,width: 65,))

                    ],
                  ),
                  const SizedBox(height: 15,),
                  Row(
                    children: [
                      const Text(
                        '\$1400 USD',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 13, color: gigasPurple),
                      ),
                      Container(
                        margin:const EdgeInsets.symmetric(horizontal:5),
                        padding: const EdgeInsets.all(2),
                        decoration:  BoxDecoration(
                            color: manateeGrey.withOpacity(0.5),
                            shape: BoxShape.circle
                        ),
                      ),
                      const Text(
                        'Sep 20,2023',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 12, color: buntingBlue),
                      ),

                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 20),
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
              padding: const EdgeInsets.only(top: 15, bottom: 10, left: 15, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FittedBox(
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 2,horizontal: 10),
                      decoration: BoxDecoration(
                          color: alabasterGrey,
                          borderRadius: BorderRadius.circular(30)
                      ),
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/sync.svg',height: 10,colorFilter: const ColorFilter.mode(
                              downeyGreen, BlendMode.srcIn)),
                          const SizedBox(width: 10,),
                          const Text('in-progress',style: TextStyle(color: downeyGreen,fontWeight: FontWeight.w600),)
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Flexible(
                        flex: 2,
                        fit: FlexFit.tight,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Arriving Today!',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 18, color: buntingBlue),
                            ),
                            SizedBox(height: 5,),
                            Text(
                              'Your delivery,#NEJ20089934122231 from Atlanta, is arriving today!',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 13, color: manateeGrey),
                            ),
                          ],
                        ),
                      ),
                      Flexible(
                          flex: 1,
                          child: SvgPicture.asset('assets/carton.svg',height: 65,width: 65,))

                    ],
                  ),
                  const SizedBox(height: 15,),
                  Row(
                    children: [
                      const Text(
                        '\$1400 USD',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 13, color: gigasPurple),
                      ),
                      Container(
                        margin:const EdgeInsets.symmetric(horizontal:5),
                        padding: const EdgeInsets.all(2),
                        decoration:  BoxDecoration(
                            color: manateeGrey.withOpacity(0.5),
                            shape: BoxShape.circle
                        ),
                      ),
                      const Text(
                        'Sep 20,2023',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 12, color: buntingBlue),
                      ),

                    ],
                  )
                ],
              ),
            ),
            // Container(
            //   margin: const EdgeInsets.only(bottom: 20),
            //   decoration: BoxDecoration(
            //     color: Colors.white,
            //     borderRadius: BorderRadius.circular(15),
            //     boxShadow: [
            //       BoxShadow(
            //         color: Colors.grey.withOpacity(0.2),
            //         spreadRadius: 0,
            //         blurRadius: 1,
            //         offset: const Offset(0, 0), // changes position of shadow
            //       ),
            //     ],
            //   ),
            //   padding: const EdgeInsets.only(top: 15, bottom: 10, left: 15, right: 15),
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       FittedBox(
            //         child: Container(
            //           padding: const EdgeInsets.symmetric(vertical: 2,horizontal: 10),
            //           decoration: BoxDecoration(
            //               color: alabasterGrey,
            //               borderRadius: BorderRadius.circular(30)
            //           ),
            //           child: Row(
            //             children: [
            //               SvgPicture.asset('assets/time-rewind.svg',height: 10,colorFilter: const ColorFilter.mode(
            //                   jaffaOrange, BlendMode.srcIn)),
            //               const SizedBox(width: 10,),
            //               const Text('pending',style: TextStyle(color: jaffaOrange,fontWeight: FontWeight.w600),)
            //             ],
            //           ),
            //         ),
            //       ),
            //       const SizedBox(height: 10,),
            //       Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: [
            //           const Flexible(
            //             flex: 2,
            //             fit: FlexFit.tight,
            //             child: Column(
            //               crossAxisAlignment: CrossAxisAlignment.start,
            //               children: [
            //                 Text(
            //                   'Arriving Today!',
            //                   style: TextStyle(
            //                       fontWeight: FontWeight.w700, fontSize: 18, color: buntingBlue),
            //                 ),
            //                 Text(
            //                   'Your delivery,#NEJ20089934122231 from Atlanta, is arriving today!',
            //                   style: TextStyle(
            //                       fontWeight: FontWeight.w400, fontSize: 13, color: manateeGrey),
            //                 ),
            //               ],
            //             ),
            //           ),
            //           Flexible(
            //               flex: 1,
            //               child: SvgPicture.asset('assets/carton.svg',height: 65,width: 65,))
            //
            //         ],
            //       ),
            //       const SizedBox(height: 20,),
            //       Row(
            //         children: [
            //           const Text(
            //             '\$650 USD',
            //             style: TextStyle(
            //                 fontWeight: FontWeight.w600, fontSize: 13, color: gigasPurple),
            //           ),
            //           Container(
            //             margin:const EdgeInsets.symmetric(horizontal:5),
            //             padding: const EdgeInsets.all(2),
            //             decoration:  BoxDecoration(
            //                 color: manateeGrey.withOpacity(0.5),
            //                 shape: BoxShape.circle
            //             ),
            //           ),
            //           const Text(
            //             'Sep 20,2023',
            //             style: TextStyle(
            //                 fontWeight: FontWeight.w500, fontSize: 12, color: buntingBlue),
            //           ),
            //
            //         ],
            //       )
            //     ],
            //   ),
            // ),
            // Container(
            //   margin: const EdgeInsets.only(bottom: 20),
            //   decoration: BoxDecoration(
            //     color: Colors.white,
            //     borderRadius: BorderRadius.circular(15),
            //     boxShadow: [
            //       BoxShadow(
            //         color: Colors.grey.withOpacity(0.2),
            //         spreadRadius: 0,
            //         blurRadius: 1,
            //         offset: const Offset(0, 0), // changes position of shadow
            //       ),
            //     ],
            //   ),
            //   padding: const EdgeInsets.only(top: 15, bottom: 10, left: 15, right: 15),
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       FittedBox(
            //         child: Container(
            //           padding: const EdgeInsets.symmetric(vertical: 2,horizontal: 10),
            //           decoration: BoxDecoration(
            //               color: alabasterGrey,
            //               borderRadius: BorderRadius.circular(30)
            //           ),
            //           child: Row(
            //             children: [
            //               SvgPicture.asset('assets/time-rewind.svg',height: 10,colorFilter: const ColorFilter.mode(
            //                   jaffaOrange, BlendMode.srcIn)),
            //               const SizedBox(width: 10,),
            //               const Text('pending',style: TextStyle(color: jaffaOrange,fontWeight: FontWeight.w600),)
            //             ],
            //           ),
            //         ),
            //       ),
            //       const SizedBox(height: 10,),
            //       Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: [
            //           const Flexible(
            //             flex: 2,
            //             fit: FlexFit.tight,
            //             child: Column(
            //               crossAxisAlignment: CrossAxisAlignment.start,
            //               children: [
            //                 Text(
            //                   'Arriving Today!',
            //                   style: TextStyle(
            //                       fontWeight: FontWeight.w700, fontSize: 14, color: buntingBlue),
            //                 ),
            //                 Text(
            //                   'Your delivery,#NEJ20089934122231 from Atlanta, is arriving today!',
            //                   style: TextStyle(
            //                       fontWeight: FontWeight.w400, fontSize: 12, color: manateeGrey),
            //                 ),
            //               ],
            //             ),
            //           ),
            //           Flexible(
            //               flex: 1,
            //               child: SvgPicture.asset('assets/carton.svg',height: 65,width: 65,))
            //
            //         ],
            //       ),
            //       const SizedBox(height: 20,),
            //       Row(
            //         children: [
            //           const Text(
            //             '\$650 USD',
            //             style: TextStyle(
            //                 fontWeight: FontWeight.w600, fontSize: 13, color: gigasPurple),
            //           ),
            //           Container(
            //             margin:const EdgeInsets.symmetric(horizontal:5),
            //             padding: const EdgeInsets.all(2),
            //             decoration:  BoxDecoration(
            //                 color: manateeGrey.withOpacity(0.5),
            //                 shape: BoxShape.circle
            //             ),
            //           ),
            //           const Text(
            //             'Sep 20,2023',
            //             style: TextStyle(
            //                 fontWeight: FontWeight.w500, fontSize: 12, color: buntingBlue),
            //           ),
            //
            //         ],
            //       )
            //     ],
            //   ),
            // ),
            // Container(
            //   margin: const EdgeInsets.only(bottom: 20),
            //   decoration: BoxDecoration(
            //     color: Colors.white,
            //     borderRadius: BorderRadius.circular(15),
            //     boxShadow: [
            //       BoxShadow(
            //         color: Colors.grey.withOpacity(0.2),
            //         spreadRadius: 0,
            //         blurRadius: 1,
            //         offset: const Offset(0, 0), // changes position of shadow
            //       ),
            //     ],
            //   ),
            //   padding: const EdgeInsets.only(top: 15, bottom: 10, left: 15, right: 15),
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       FittedBox(
            //         child: Container(
            //           padding: const EdgeInsets.symmetric(vertical: 2,horizontal: 10),
            //           decoration: BoxDecoration(
            //               color: alabasterGrey,
            //               borderRadius: BorderRadius.circular(30)
            //           ),
            //           child: Row(
            //             children: [
            //               SvgPicture.asset('assets/time-stop-watch.svg',height: 10,colorFilter: const ColorFilter.mode(
            //                   wedgeWoodBlue, BlendMode.srcIn)),
            //               const SizedBox(width: 10,),
            //               const Text('loading',style: TextStyle(color: wedgeWoodBlue,fontWeight: FontWeight.w600),)
            //             ],
            //           ),
            //         ),
            //       ),
            //       const SizedBox(height: 10,),
            //       Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: [
            //           const Flexible(
            //             flex: 2,
            //             fit: FlexFit.tight,
            //             child: Column(
            //               crossAxisAlignment: CrossAxisAlignment.start,
            //               children: [
            //                 Text(
            //                   'Arriving Today!',
            //                   style: TextStyle(
            //                       fontWeight: FontWeight.w700, fontSize: 14, color: buntingBlue),
            //                 ),
            //                 Text(
            //                   'Your delivery,#NEJ20089934122231 from Atlanta, is arriving today!',
            //                   style: TextStyle(
            //                       fontWeight: FontWeight.w400, fontSize: 12, color: manateeGrey),
            //                 ),
            //               ],
            //             ),
            //           ),
            //           Flexible(
            //               flex: 1,
            //               child: SvgPicture.asset('assets/carton.svg',height: 65,width: 65,))
            //
            //         ],
            //       ),
            //       const SizedBox(height: 20,),
            //       Row(
            //         children: [
            //           const Text(
            //             '\$230 USD',
            //             style: TextStyle(
            //                 fontWeight: FontWeight.w600, fontSize: 13, color: gigasPurple),
            //           ),
            //           Container(
            //             margin:const EdgeInsets.symmetric(horizontal:5),
            //             padding: const EdgeInsets.all(2),
            //             decoration:  BoxDecoration(
            //                 color: manateeGrey.withOpacity(0.5),
            //                 shape: BoxShape.circle
            //             ),
            //           ),
            //           const Text(
            //             'Sep 20,2023',
            //             style: TextStyle(
            //                 fontWeight: FontWeight.w500, fontSize: 12, color: buntingBlue),
            //           ),
            //
            //         ],
            //       )
            //     ],
            //   ),
            // ),
            // Container(
            //   margin: const EdgeInsets.only(bottom: 20),
            //   decoration: BoxDecoration(
            //     color: Colors.white,
            //     borderRadius: BorderRadius.circular(15),
            //     boxShadow: [
            //       BoxShadow(
            //         color: Colors.grey.withOpacity(0.2),
            //         spreadRadius: 0,
            //         blurRadius: 1,
            //         offset: const Offset(0, 0), // changes position of shadow
            //       ),
            //     ],
            //   ),
            //   padding: const EdgeInsets.only(top: 15, bottom: 10, left: 15, right: 15),
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       FittedBox(
            //         child: Container(
            //           padding: const EdgeInsets.symmetric(vertical: 2,horizontal: 10),
            //           decoration: BoxDecoration(
            //               color: alabasterGrey,
            //               borderRadius: BorderRadius.circular(30)
            //           ),
            //           child: Row(
            //             children: [
            //               SvgPicture.asset('assets/time-stop-watch.svg',height: 10,colorFilter: const ColorFilter.mode(
            //                   wedgeWoodBlue, BlendMode.srcIn)),
            //               const SizedBox(width: 10,),
            //               const Text('loading',style: TextStyle(color: wedgeWoodBlue,fontWeight: FontWeight.w600),)
            //             ],
            //           ),
            //         ),
            //       ),
            //       const SizedBox(height: 10,),
            //       Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: [
            //           const Flexible(
            //             flex: 2,
            //             fit: FlexFit.tight,
            //             child: Column(
            //               crossAxisAlignment: CrossAxisAlignment.start,
            //               children: [
            //                 Text(
            //                   'Arriving Today!',
            //                   style: TextStyle(
            //                       fontWeight: FontWeight.w700, fontSize: 14, color: buntingBlue),
            //                 ),
            //                 Text(
            //                   'Your delivery,#NEJ20089934122231 from Atlanta, is arriving today!',
            //                   style: TextStyle(
            //                       fontWeight: FontWeight.w400, fontSize: 12, color: manateeGrey),
            //                 ),
            //               ],
            //             ),
            //           ),
            //           Flexible(
            //               flex: 1,
            //               child: SvgPicture.asset('assets/carton.svg',height: 65,width: 65,))
            //
            //         ],
            //       ),
            //       const SizedBox(height: 20,),
            //       Row(
            //         children: [
            //           const Text(
            //             '\$230 USD',
            //             style: TextStyle(
            //                 fontWeight: FontWeight.w600, fontSize: 13, color: gigasPurple),
            //           ),
            //           Container(
            //             margin:const EdgeInsets.symmetric(horizontal:5),
            //             padding: const EdgeInsets.all(2),
            //             decoration:  BoxDecoration(
            //                 color: manateeGrey.withOpacity(0.5),
            //                 shape: BoxShape.circle
            //             ),
            //           ),
            //           const Text(
            //             'Sep 20,2023',
            //             style: TextStyle(
            //                 fontWeight: FontWeight.w500, fontSize: 12, color: buntingBlue),
            //           ),
            //
            //         ],
            //       )
            //     ],
            //   ),
            // ),
            // Container(
            //   margin: const EdgeInsets.only(bottom: 20),
            //   decoration: BoxDecoration(
            //     color: Colors.white,
            //     borderRadius: BorderRadius.circular(15),
            //     boxShadow: [
            //       BoxShadow(
            //         color: Colors.grey.withOpacity(0.2),
            //         spreadRadius: 0,
            //         blurRadius: 1,
            //         offset: const Offset(0, 0), // changes position of shadow
            //       ),
            //     ],
            //   ),
            //   padding: const EdgeInsets.only(top: 15, bottom: 10, left: 15, right: 15),
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       FittedBox(
            //         child: Container(
            //           padding: const EdgeInsets.symmetric(vertical: 2,horizontal: 10),
            //           decoration: BoxDecoration(
            //               color: alabasterGrey,
            //               borderRadius: BorderRadius.circular(30)
            //           ),
            //           child: Row(
            //             children: [
            //               SvgPicture.asset('assets/sync.svg',height: 10,colorFilter: const ColorFilter.mode(
            //                   downeyGreen, BlendMode.srcIn)),
            //               const SizedBox(width: 10,),
            //               const Text('in-progress',style: TextStyle(color: downeyGreen,fontWeight: FontWeight.w600),)
            //             ],
            //           ),
            //         ),
            //       ),
            //       const SizedBox(height: 10,),
            //       Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: [
            //           const Flexible(
            //             flex: 2,
            //             fit: FlexFit.tight,
            //             child: Column(
            //               crossAxisAlignment: CrossAxisAlignment.start,
            //               children: [
            //                 Text(
            //                   'Arriving Today!',
            //                   style: TextStyle(
            //                       fontWeight: FontWeight.w700, fontSize: 14, color: buntingBlue),
            //                 ),
            //                 Text(
            //                   'Your delivery,#NEJ20089934122231 from Atlanta, is arriving today!',
            //                   style: TextStyle(
            //                       fontWeight: FontWeight.w400, fontSize: 12, color: manateeGrey),
            //                 ),
            //               ],
            //             ),
            //           ),
            //           Flexible(
            //               flex: 1,
            //               child: SvgPicture.asset('assets/carton.svg',height: 65,width: 65,))
            //
            //         ],
            //       ),
            //       const SizedBox(height: 20,),
            //       Row(
            //         children: [
            //           const Text(
            //             '\$1400 USD',
            //             style: TextStyle(
            //                 fontWeight: FontWeight.w600, fontSize: 13, color: gigasPurple),
            //           ),
            //           Container(
            //             margin:const EdgeInsets.symmetric(horizontal:5),
            //             padding: const EdgeInsets.all(2),
            //             decoration:  BoxDecoration(
            //                 color: manateeGrey.withOpacity(0.5),
            //                 shape: BoxShape.circle
            //             ),
            //           ),
            //           const Text(
            //             'Sep 20,2023',
            //             style: TextStyle(
            //                 fontWeight: FontWeight.w500, fontSize: 12, color: buntingBlue),
            //           ),
            //
            //         ],
            //       )
            //     ],
            //   ),
            // ),
            // Container(
            //   margin: const EdgeInsets.only(bottom: 20),
            //   decoration: BoxDecoration(
            //     color: Colors.white,
            //     borderRadius: BorderRadius.circular(15),
            //     boxShadow: [
            //       BoxShadow(
            //         color: Colors.grey.withOpacity(0.2),
            //         spreadRadius: 0,
            //         blurRadius: 1,
            //         offset: const Offset(0, 0), // changes position of shadow
            //       ),
            //     ],
            //   ),
            //   padding: const EdgeInsets.only(top: 15, bottom: 10, left: 15, right: 15),
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       FittedBox(
            //         child: Container(
            //           padding: const EdgeInsets.symmetric(vertical: 2,horizontal: 10),
            //           decoration: BoxDecoration(
            //               color: alabasterGrey,
            //               borderRadius: BorderRadius.circular(30)
            //           ),
            //           child: Row(
            //             children: [
            //               SvgPicture.asset('assets/sync.svg',height: 10,colorFilter: const ColorFilter.mode(
            //                   downeyGreen, BlendMode.srcIn)),
            //               const SizedBox(width: 10,),
            //               const Text('in-progress',style: TextStyle(color: downeyGreen,fontWeight: FontWeight.w600),)
            //             ],
            //           ),
            //         ),
            //       ),
            //       const SizedBox(height: 10,),
            //       Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: [
            //           const Flexible(
            //             flex: 2,
            //             fit: FlexFit.tight,
            //             child: Column(
            //               crossAxisAlignment: CrossAxisAlignment.start,
            //               children: [
            //                 Text(
            //                   'Arriving Today!',
            //                   style: TextStyle(
            //                       fontWeight: FontWeight.w700, fontSize: 14, color: buntingBlue),
            //                 ),
            //                 Text(
            //                   'Your delivery,#NEJ20089934122231 from Atlanta, is arriving today!',
            //                   style: TextStyle(
            //                       fontWeight: FontWeight.w400, fontSize: 12, color: manateeGrey),
            //                 ),
            //               ],
            //             ),
            //           ),
            //           Flexible(
            //               flex: 1,
            //               child: SvgPicture.asset('assets/carton.svg',height: 65,width: 65,))
            //
            //         ],
            //       ),
            //       const SizedBox(height: 20,),
            //       Row(
            //         children: [
            //           const Text(
            //             '\$1400 USD',
            //             style: TextStyle(
            //                 fontWeight: FontWeight.w600, fontSize: 13, color: gigasPurple),
            //           ),
            //           Container(
            //             margin:const EdgeInsets.symmetric(horizontal:5),
            //             padding: const EdgeInsets.all(2),
            //             decoration:  BoxDecoration(
            //                 color: manateeGrey.withOpacity(0.5),
            //                 shape: BoxShape.circle
            //             ),
            //           ),
            //           const Text(
            //             'Sep 20,2023',
            //             style: TextStyle(
            //                 fontWeight: FontWeight.w500, fontSize: 12, color: buntingBlue),
            //           ),
            //
            //         ],
            //       )
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
