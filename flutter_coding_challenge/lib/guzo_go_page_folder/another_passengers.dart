import 'package:flutter/material.dart';

class AnotherPassengers extends StatefulWidget {
  const AnotherPassengers({super.key});

  @override
  State<AnotherPassengers> createState() => _AnotherPassengersState();
}

class _AnotherPassengersState extends State<AnotherPassengers> {
  int numberSeven = 7;
  int numberOne = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: TextButton(
        onPressed: () {
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
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text('Passengers'),
                              Row(
                                children: [
                                  Text('Cancel'),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text('Done'),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const Text('Adult'),
                              Row(
                                children: [
                                  const Icon(Icons.remove_circle_rounded),
                                  Text(numberOne.toString()),
                                  const Icon(Icons.add_circle),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 30.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const Text('Children 2-12 Years'),
                                Row(
                                  children: [
                                    const Icon(Icons.remove_circle_rounded),
                                    Text(numberSeven.toString()),
                                    const Icon(Icons.add_circle),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 18.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const Text('Infant <2 Years'),
                                Row(
                                  children: [
                                    const Icon(Icons.remove_circle_rounded),
                                    Text(numberOne.toString()),
                                    const Icon(Icons.add_circle),
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
        child: const Text('Click Me'),
      ),
    ));
  }
}
