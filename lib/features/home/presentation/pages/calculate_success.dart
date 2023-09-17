import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movemate_shipment/core/utils.dart';
import 'package:movemate_shipment/features/app_colors.dart';
import 'package:movemate_shipment/features/calculate/presentation/widgets/animated_number_widget.dart';

class CalculateSuccessfulPage extends StatefulWidget {
  const CalculateSuccessfulPage({super.key});

  @override
  State<CalculateSuccessfulPage> createState() =>
      _CalculateSuccessfulPageState();
}

class _CalculateSuccessfulPageState extends State<CalculateSuccessfulPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: hintGrey,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: hintGrey,
      ),
      body: ListView(
        padding: const EdgeInsets.only(top: 20),
        children: [
          Column(
            children: [
              SizedBox(
               // color: Colors.red,
                width: width(context) / 1.4,
                child: Column(
                  children: [
                    Image.asset('assets/logo.png',height: 90),
                    const SizedBox(
                      height: 40,
                    ),
                    SvgPicture.asset(
                      'assets/carton.svg',
                      height: 150,
                      width: 150,
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const Text(
                      'Total Estimated Amount',
                      style: TextStyle(
                          color: buntingBlue, fontSize: 23, fontWeight: FontWeight.w500),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AnimatedNumber(
                          startValue: 0,
                          endValue: 2000,
                          prefixText: '\$',
                          duration: const Duration(seconds: 2),
                          isFloatingPoint: false,
                          style:  GoogleFonts.openSans(
                              color: downeyGreen,
                              fontSize: 24,
                              fontWeight: FontWeight.w500
                          ),
                          // style: TextStyle(
                          //   color: downeyGreen,
                          //   fontSize: 24,
                          //     fontFamily: GoogleFonts.openSans(),
                          //     fontWeight: FontWeight.w500
                          // ),
                        ),
                        const SizedBox(width: 5.0,),
                        const Text('USD',style: TextStyle(
                            color: downeyGreen,
                            fontSize: 20,
                            fontWeight: FontWeight.w400))
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      'This amount is estimated this will vary if you change your location or weight.',
                      style: TextStyle(
                          color: manateeGrey, fontSize: 14, fontWeight: FontWeight.w500),
                      textAlign: TextAlign.left,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: MaterialButton(
              onPressed: (){
              Navigator.popUntil(context, (route) => route.isFirst);
              },
              elevation: 0,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              color: jaffaOrange,
              child:const Text(
                'Back to home',
                style: TextStyle(color: Colors.white, fontSize: 16,fontWeight: FontWeight.w600),
              ),
            ),
          )
        ],
      ),
    );
  }
}
