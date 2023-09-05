import 'package:flutter/material.dart';

import 'bottom_navigation_bar_items/booking_screen.dart';
import 'bottom_navigation_bar_items/notifications_screen.dart';
import 'bottom_navigation_bar_items/search_screen.dart';
import 'bottom_navigation_bar_items/settings_screen.dart';

class GuzoGoHome extends StatefulWidget {
  const GuzoGoHome({super.key});

  @override
  State<GuzoGoHome> createState() => _GuzoGoHomeState();
}

class _GuzoGoHomeState extends State<GuzoGoHome> {
  int _currentIndex = 0;

  static const List<Widget> _widgetOptions = [
    SearchScreen(),
    BookingScreen(),
    NotificationScreen(),
    SettingsScreen(),
  ];
  int adultNumber = 1;
  int childrenNumber = 0;
  int infantNumber = 0;
  bool buttonColor = true;
  int numberSeven = 0;
  int adultnumberOne = 1;
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    var theme = Theme.of(context);
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        // backgroundColor: const Color.fromARGB(255, 11, 2, 56),
        body: Column(
          children: [
            Container(
              height: 360,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 11, 2, 56),
                // image: DecorationImage(
                //   image: AssetImage('assets/guzo.jpeg'),
                // ),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 90),
                        child: Text(
                          'Guzo Go',
                          style: TextStyle(
                            fontSize: 40,
                            fontStyle: FontStyle.italic,
                            color: Colors.amberAccent,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              width: 4,
                              color: Colors.white,
                            ),
                          ),
                          child: const Icon(
                            Icons.notifications_active,
                            size: 40,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  // const SizedBox(
                  //   height: 20,
                  // ),
                  Theme(
                    data: theme.copyWith(
                      colorScheme: theme.colorScheme.copyWith(
                        surfaceVariant: Colors.transparent,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 5.0,
                        vertical: 10,
                      ),
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(1000),
                          border: Border.all(
                            width: 1,
                            color: Colors.white,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 5.0,
                            vertical: 5,
                          ),
                          child: TabBar(
                            isScrollable: false,
                            indicator: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            labelStyle: const TextStyle(color: Colors.black),
                            unselectedLabelColor: Colors.white,
                            // isScrollable: true,
                            // automaticIndicatorColorAdjustment: false,
                            tabs: [
                              Container(
                                alignment: Alignment.center,
                                // width: 30,
                                child: const Tab(
                                  child: Text(
                                    'Return',
                                    style: TextStyle(
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                child: const Tab(
                                  child: Text(
                                    'One-Way',
                                    style: TextStyle(
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 5,
                      vertical: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        buttonColor
                            ? InkWell(
                                onTap: () {
                                  //select the location
                                },
                                child: Container(
                                  child: const Column(
                                    children: [
                                      Text(
                                        'From',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                        ),
                                      ),
                                      Text(
                                        'ADD',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 35,
                                        ),
                                      ),
                                      Text(
                                        'Addis Ababa',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                        ),
                                      ),
                                      Text(
                                        'Bole International Airport',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            : InkWell(
                                onTap: () {
                                  //select the location
                                },
                                child: Container(
                                  child: const Column(
                                    children: [
                                      Text(
                                        'From',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                        ),
                                      ),
                                      Text(
                                        'Select Destination',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                        ///The following will be the middle Widget
                        InkWell(
                          onTap: () {
                            //toggle the widget
                            buttonColor = !buttonColor;
                          },
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(200),
                              border: Border.all(
                                width: 1,
                              ),
                            ),
                            child: const Icon(
                              // Icons.arrow_drop_down_circle_sharp,
                              // Icons.transfer_within_a_station_outlined,
                              Icons.compare_arrows, size: 25,
                              color: Colors.black,
                            ),
                          ),
                        ),

                        ///The above widget was a middle
                        buttonColor
                            ? InkWell(
                                onTap: () {
                                  //select the location
                                },
                                child: Container(
                                  child: const Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'To',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Text(
                                        'Select Destination',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            : InkWell(
                                onTap: () {
                                  //select the location
                                },
                                child: Container(
                                  child: const Column(
                                    children: [
                                      Text(
                                        'From',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                        ),
                                      ),
                                      Text(
                                        'ADD',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 35,
                                        ),
                                      ),
                                      Text(
                                        'Addis Ababa',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                        ),
                                      ),
                                      Text(
                                        'Bole International Airport',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            //The new white widgets

            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10.0,
                  vertical: 10,
                ),
                child: SizedBox(
                  height: 100,
                  child: GridView.count(
                    childAspectRatio: 2.75,
                    crossAxisCount: 2,
                    // shrinkWrap: true,
                    mainAxisSpacing: 0,
                    crossAxisSpacing: 0,
                    children: [
                      Card(
                        child: Container(
                          // height: 10,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            // borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Departure Date',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(
                                  // height: 15,
                                  ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '25',
                                    style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        'Apr',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                      Text(
                                        'Tuesday',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        child: Container(
                          // height: 10,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            // borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 8.0),
                                child: Text(
                                  'Return Date',
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '10',
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        'May',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                      Text(
                                        'Wednesday',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        child: Container(
                          // height: 10,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            // borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Cabin Class',
                                style: TextStyle(fontSize: 20),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Economy',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Card(
                        child: Container(
                          // height: 10,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            // borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: InkWell(
                            onTap: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //     builder: (context) => const Passengers(),
                              //   ),
                              // );
                              showModalBottomSheet(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return SizedBox(
                                      height: 200,
                                      width: double.infinity,
                                      child: Container(
                                        // width: 230,
                                        // height: 230,
                                        color: Colors.white,

                                        child: Column(
                                          children: [
                                            const Expanded(
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: [
                                                  Text(
                                                    'Passengers',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text('Cancel'),
                                                      SizedBox(
                                                        width: 8,
                                                      ),
                                                      Text(
                                                        'Done',
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Expanded(
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: [
                                                  const Text('Adult'),
                                                  Row(
                                                    children: [
                                                      const Icon(Icons
                                                          .remove_circle_rounded),
                                                      Text(adultNumber
                                                          .toString()),
                                                      const Icon(
                                                          Icons.add_circle),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 30.0),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                  children: [
                                                    const Text(
                                                        'Children 2-12 Years'),
                                                    Row(
                                                      children: [
                                                        const Icon(Icons
                                                            .remove_circle_rounded),
                                                        Text(childrenNumber
                                                            .toString()),
                                                        const Icon(
                                                            Icons.add_circle),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 18.0),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                  children: [
                                                    const Text(
                                                        'Infant <2 Years'),
                                                    Row(
                                                      children: [
                                                        const Icon(Icons
                                                            .remove_circle_rounded),
                                                        Text(infantNumber
                                                            .toString()),
                                                        const Icon(
                                                            Icons.add_circle),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  });
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'Passengers',
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      height: 40,
                                      child: Row(
                                        children: [
                                          const Icon(
                                            Icons.emoji_people_sharp,
                                            size: 30,
                                          ),
                                          Text(
                                            adultNumber.toString(),
                                            style: const TextStyle(
                                              fontSize: 20,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.emoji_people_sharp,
                                          size: 20,
                                        ),
                                        Text(
                                          childrenNumber.toString(),
                                          style: const TextStyle(
                                            fontSize: 20,
                                          ),
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.emoji_people_sharp,
                                          size: 15,
                                        ),
                                        Text(
                                          infantNumber.toString(),
                                          style: const TextStyle(fontSize: 20),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Padding(
              // padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: Container(
                height: 40,
                // width: 100,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(255, 235, 59, 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Search Flights',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              child: _widgetOptions.elementAt(_currentIndex),
            ),
          ],
        ),

        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          backgroundColor: colorScheme.surface,
          selectedItemColor: colorScheme.onSurface,
          unselectedItemColor: colorScheme.onSurface.withOpacity(.60),
          selectedLabelStyle: textTheme.bodySmall,
          unselectedLabelStyle: textTheme.bodySmall,
          onTap: (value) {
            // Respond to item press.
            setState(() => _currentIndex = value);
          },
          items: [
            const BottomNavigationBarItem(
              label: 'Search',
              icon: Icon(Icons.search),
            ),
            const BottomNavigationBarItem(
              label: 'Booking',
              icon: Icon(Icons.book),
            ),
            const BottomNavigationBarItem(
              label: 'Notifications',
              icon: Icon(Icons.notifications),
            ),
            BottomNavigationBarItem(
              label: 'Settings',
              icon: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(Icons.settings),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
