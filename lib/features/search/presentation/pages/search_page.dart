import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movemate_shipment/core/utils.dart';
import 'package:movemate_shipment/features/app_colors.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: hintGrey,
      appBar: AppBar(
        backgroundColor: gigasPurple,
        automaticallyImplyLeading: false,
        bottom: PreferredSize(
            preferredSize: Size(width(context), 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const BackButton(
                  color: hintGrey,
                ),
                Expanded(
                  child: Hero(
                    tag: 'search',
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 20, right: 15),
                      padding: const EdgeInsets.only(
                          left: 10, top: 5, bottom: 5, right: 7),
                      decoration: BoxDecoration(
                        color: hintGrey,
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: Row(
                        children: [
                          const Icon(Icons.search,
                              color: gigasPurple, size: 20),
                          const SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            child: Material(
                              child: TextFormField(
                                onChanged: (String value){

                                },
                                style: const TextStyle(
                                    fontWeight: FontWeight.w500),
                                decoration: const InputDecoration.collapsed(
                                    hintText: '#NEJ200899',
                                    hintStyle: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: manateeGrey)),
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: const BoxDecoration(
                              color: jaffaOrange,
                              shape: BoxShape.circle,
                            ),
                            child: SvgPicture.asset(
                              'assets/scan.svg',
                              colorFilter: const ColorFilter.mode(
                                  hintGrey, BlendMode.srcIn),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 0,
            blurRadius: 4,
            offset: const Offset(0, 0), // changes position of shadow
          ),
        ], color: Colors.white, borderRadius: BorderRadius.circular(15.0)),
        padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
        child: AnimationLimiter(
            child: Column(
                mainAxisSize: MainAxisSize.min,
                children: AnimationConfiguration.toStaggeredList(
                  duration: const Duration(milliseconds: 375),
                  childAnimationBuilder: (widget) => SlideAnimation(
                    horizontalOffset: 50.0,
                    child: FadeInAnimation(
                      child: widget,
                    ),
                  ),
                  children: [
                    ListView.separated(
                      shrinkWrap: true,
                      itemCount: 6,
                      padding: const EdgeInsets.only(bottom: 10),
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          visualDensity:
                              const VisualDensity(horizontal: -4, vertical: -4),
                          leading: Container(
                            width: 33,
                            decoration: const BoxDecoration(
                              color: delugePurple,
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                                child: SvgPicture.asset(
                              'assets/carton_white.svg',
                              height: 18,
                            )),
                          ),
                          title: const Text(
                            'Macbook Pro M2',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          subtitle: const Text(
                            '#NE43857340857904 • Paris -> Morocco',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: manateeGrey),
                          ),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Divider(
                            color: bombayGrey.withOpacity(0.3),
                          ),
                        );
                      },
                    )
                  ],
                ))),
      ),
    );
  }
}
