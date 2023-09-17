import 'package:flutter/material.dart';
import 'package:movemate_shipment/features/calculate/presentation/pages/calculate_page.dart';
import 'package:movemate_shipment/features/home/presentation/pages/home_page.dart';
import 'package:movemate_shipment/features/home/presentation/widgets/line_indicator_bottom_item.dart';
import 'package:movemate_shipment/features/home/presentation/widgets/line_indicator_bottom_navigation.dart';
import 'package:movemate_shipment/features/shipment/presentation/pages/shipment_page.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {

  final ValueNotifier<int> _selectedIndex = ValueNotifier(0); //default index

  final List<Widget> _children = [
    const HomePage(),
    const Text('Account'),
    const Text('Leaves'),
    const Text('Loyalty'),
    const Text('Requests'),
  ];
  @override
  Widget build(BuildContext context) {

    return ValueListenableBuilder(
      valueListenable: _selectedIndex,
      builder: (BuildContext context, int value, Widget? child) {
        return Scaffold(
            bottomNavigationBar: LineIndicatorBottomNavbar(
              currentIndex: value,
              enableLineIndicator: true,
              selectedIconSize: 25,
              unselectedIconSize: 25,
              lineIndicatorWidth: 4,
              onTap: (int index) {
                _selectedIndex.value = index ;
                navigateToPage(index);
                _selectedIndex.value = 0 ;
              },
              customBottomBarItems: [
                LineIndicatorBottomBarItems(
                  label: 'Home',
                  icon: 'assets/home.svg',
                ),
                LineIndicatorBottomBarItems(
                  label: 'Calculate',
                  icon: 'assets/calculate.svg',
                ),
                LineIndicatorBottomBarItems(
                    label: 'Shipment',
                    icon: 'assets/time-rewind.svg'),
                LineIndicatorBottomBarItems(
                  label: 'Profile',
                  icon: 'assets/person.svg',
                ),
              ],

            ),
            body: IndexedStack(
              index: value,
              children: _children,
            )
        );
      },
    );
  }

  void navigateToPage(int index){
    if(index == 1){
      Navigator.push(context, MaterialPageRoute(builder: (context) => const CalculatePage()));
    }
    else if (index == 2){
      Navigator.push(context, MaterialPageRoute(builder: (context) => const ShipmentPage()));

    }
  }
}
