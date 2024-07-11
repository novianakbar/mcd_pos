import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mcd/ui/screens/home/components/overview_item.dart';
import 'package:mcd/ui/screens/home/components/overview_ordered_item.dart';
import 'package:mcd/shared/theme.dart';

class MobileScreen extends StatefulWidget {
  const MobileScreen({super.key});

  @override
  State<MobileScreen> createState() => _MobileScreenState();
}

class _MobileScreenState extends State<MobileScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Map> overviewItem = [
      {
        'title': 'Revenue',
        'image': 'assets/ic_cash.png',
        'value': '\$123 456',
      },
      {
        'title': 'Orders',
        'image': 'assets/ic_order.png',
        'value': '1039',
      },
      {
        'title': 'Walks-ins',
        'image': 'assets/ic_customer.png',
        'value': '840',
      },
      {
        'title': 'Online Order',
        'image': 'assets/ic_onlineorder.png',
        'value': '199',
      },
    ];

    Widget customBottomNavBar() {
      return BottomAppBar(
        height: 80,
        padding: EdgeInsets.zero,
        notchMargin: 0,
        color: whiteColor,
        shadowColor: whiteColor,
        surfaceTintColor: whiteColor,
        child: Theme(
          data: ThemeData(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
          ),
          child: BottomNavigationBar(
            backgroundColor: whiteColor,
            type: BottomNavigationBarType.fixed,
            elevation: 0,
            currentIndex: _selectedIndex,
            unselectedItemColor: greyColor,
            selectedItemColor: primaryColor,
            selectedLabelStyle: primaryTextStyle.copyWith(
              fontSize: 12,
              fontWeight: bold,
            ),
            unselectedLabelStyle: greyTextStyle.copyWith(
              fontWeight: medium,
              fontSize: 11,
            ),
            onTap: _onItemTapped,
            items: [
              BottomNavigationBarItem(
                label: 'Dashboard',
                icon: Container(
                  margin: const EdgeInsets.only(
                    bottom: 10,
                  ),
                  child: Image.asset(
                    'assets/ic_pie.png',
                    width: 20,
                    height: 20,
                    color: _selectedIndex == 0 ? primaryColor : greyColor,
                  ),
                ),
              ),
              BottomNavigationBarItem(
                label: 'Online Order',
                icon: Container(
                  margin: const EdgeInsets.only(
                    bottom: 10,
                  ),
                  child: Image.asset(
                    'assets/ic_pointer.png',
                    width: 20,
                    height: 20,
                    color: _selectedIndex == 1 ? primaryColor : greyColor,
                  ),
                ),
              ),
              BottomNavigationBarItem(
                label: 'Settings',
                icon: Container(
                  margin: const EdgeInsets.only(
                    bottom: 10,
                  ),
                  child: Image.asset(
                    'assets/ic_gear.png',
                    width: 20,
                    height: 20,
                    color: _selectedIndex == 2 ? primaryColor : greyColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: lightBackgroundColor,
      bottomNavigationBar: customBottomNavBar(),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 52,
                    height: 52,
                    child: Image.asset('assets/logo_mcd_small.png'),
                  ),
                  RichText(
                    text: const TextSpan(
                      text: "27 February 2024",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          text: " Tuesday | 17:00",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.normal),
                        )
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      // Tambahkan logika yang diinginkan ketika widget diklik di sini
                      context.pushNamed('order');
                    },
                    child: Image.asset(
                      'assets/ic_order.png',
                      width: 24,
                      height: 24,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              OverviewItem(overviewItem: overviewItem),
              Expanded(
                child: ListView(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    const OverviewOrderedItems(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
