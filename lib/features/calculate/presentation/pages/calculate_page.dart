import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movemate_shipment/features/app_colors.dart';
import 'package:movemate_shipment/features/home/presentation/pages/calculate_success.dart';

class CalculatePage extends StatefulWidget {
  const CalculatePage({super.key});

  @override
  State<CalculatePage> createState() => _CalculatePageState();
}

class _CalculatePageState extends State<CalculatePage> {
  String dropdownValue = 'Box';
  List<String> categories = [
    'Documents',
    'Glass',
    'Liquid',
    'Food',
    'Electronic',
    'Product',
    'Others'
  ];
  ValueNotifier<String> selectedCategory = ValueNotifier('');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: hintGrey,
      bottomNavigationBar: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0,right: 16,bottom: 20,top: 16),
          child: Hero(
            tag: 'calculate',
            child: MaterialButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const CalculateSuccessfulPage()));
              },
              elevation: 0,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              color: jaffaOrange,
              child:const Text(
                'Calculate',
                style: TextStyle(color: Colors.white, fontSize: 16,fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: gigasPurple,
        centerTitle: true,
        title:  Text(
          'Calculate',
          style: GoogleFonts.openSans(
              fontWeight: FontWeight.w600,
              fontSize: 18,
              color: hintGrey
          ),
        ),
        leading: const BackButton(
          color: hintGrey,
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
        children: [
           Text(
            'Destination',
            style: GoogleFonts.openSans(
                fontWeight: FontWeight.w600,
                fontSize: 18,
                color: buntingBlue
            ),
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
            padding: const EdgeInsets.only(top: 15, bottom: 10, left: 15, right: 15),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: AnimationConfiguration.toStaggeredList(
                duration: const Duration(milliseconds: 375),
                childAnimationBuilder: (widget) => SlideAnimation(
                  horizontalOffset: 50.0,
                  child: FadeInAnimation(
                    child: widget,
                  ),
                ),
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: alabasterGrey,
                        borderRadius: BorderRadius.circular(8.0)),
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: SvgPicture.asset(
                                'assets/unarchive.svg',
                                height: 20,
                                colorFilter: const ColorFilter.mode(
                                    jumboGrey, BlendMode.srcIn),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 10.0),
                              width: 1,
                              height: 30,
                              decoration: BoxDecoration(
                                  color: manateeGrey.withOpacity(0.3)),
                            )
                          ],
                        ),
                        Expanded(
                          child: TextFormField(
                            style: const TextStyle(fontWeight: FontWeight.w500),
                            decoration: const InputDecoration.collapsed(
                                hintText: 'Sender Location',
                                hintStyle: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: manateeGrey)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: alabasterGrey,
                        borderRadius: BorderRadius.circular(8.0)),
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: SvgPicture.asset(
                                'assets/archive.svg',
                                height: 20,
                                colorFilter: const ColorFilter.mode(
                                    jumboGrey, BlendMode.srcIn),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 10.0),
                              width: 1,
                              height: 30,
                              decoration: BoxDecoration(
                                  color: manateeGrey.withOpacity(0.3)),
                            )
                          ],
                        ),
                        Expanded(
                          child: TextFormField(
                            style: const TextStyle(fontWeight: FontWeight.w500),
                            decoration: const InputDecoration.collapsed(
                                hintText: 'Receiver Location',
                                hintStyle: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: manateeGrey)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: alabasterGrey,
                        borderRadius: BorderRadius.circular(8.0)),
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: SvgPicture.asset(
                                'assets/hourglass-end.svg',
                                height: 20,
                                colorFilter: const ColorFilter.mode(
                                    jumboGrey, BlendMode.srcIn),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 10.0),
                              width: 1,
                              height: 30,
                              decoration: BoxDecoration(
                                  color: manateeGrey.withOpacity(0.3)),
                            )
                          ],
                        ),
                        Expanded(
                          child: TextFormField(
                            decoration: const InputDecoration.collapsed(
                              hintText: 'Approx Weight',
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: manateeGrey),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
           Text(
            'Packaging',
            style: GoogleFonts.openSans(
                fontWeight: FontWeight.w600,
                fontSize: 18,
                color: buntingBlue
            ),
          ),
          const Text(
            'What are you sending?',
            style: TextStyle(
                fontWeight: FontWeight.w400, fontSize: 14, color: manateeGrey),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10.0)),
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                SvgPicture.asset(
                  'assets/carton.svg',
                  height: 25,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10.0),
                  width: 1,
                  height: 30,
                  decoration:
                      BoxDecoration(color: manateeGrey.withOpacity(0.3)),
                ),
                Expanded(
                    child: DropdownButtonFormField(
                  decoration: const InputDecoration.collapsed(hintText: ''),
                  dropdownColor: Colors.white,
                  elevation: 0,
                  value: dropdownValue,
                  icon: const Icon(Icons.keyboard_arrow_down),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue = newValue!;
                    });
                  },
                  items: <String>['Box', 'Small Truck', 'Big Truck', 'Cargo']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: const TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w700),
                      ),
                    );
                  }).toList(),
                ))
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
           Text(
            'Categories',
            style: GoogleFonts.openSans(
                fontWeight: FontWeight.w600,
                fontSize: 18,
                color: buntingBlue
            ),
          ),
          const Text(
            'What are you sending?',
            style: TextStyle(
                fontWeight: FontWeight.w400, fontSize: 14, color: manateeGrey),
          ),
          const SizedBox(
            height: 10,
          ),
          ValueListenableBuilder(
            valueListenable: selectedCategory,
            builder: (BuildContext context, String value, Widget? child) {
              return Wrap(
                runSpacing: 15.0,
                spacing: 10.0,
                children: AnimationConfiguration.toStaggeredList(
                  duration: const Duration(milliseconds: 375),
                  childAnimationBuilder: (widget) => SlideAnimation(
                    horizontalOffset: 50.0,
                    child: FadeInAnimation(
                      child: widget,
                    ),
                  ),
                  children: List.generate(categories.length, (index) {
                    var isSelected = value.toLowerCase() == categories[index].toLowerCase();
                    return GestureDetector(
                      onTap: () {
                        selectedCategory.value = categories[index];
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 7),
                        decoration: BoxDecoration(
                            border: Border.all(color: isSelected ? Colors.transparent : manateeGrey),
                            borderRadius: BorderRadius.circular(8),
                            color: isSelected ? buntingBlue : Colors.transparent),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            if(isSelected) const Icon(Icons.check,size: 15,color: Colors.white),
                            const SizedBox(width: 5,),
                            Text(
                              categories[index],
                              style: TextStyle(
                                  color: isSelected ? Colors.white : buntingBlue,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    );
                  }).toList(),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
