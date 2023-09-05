import 'package:flutter/material.dart';

class Passengers extends StatefulWidget {
  const Passengers({super.key});

  @override
  State<Passengers> createState() => _PassengersState();
}

class _PassengersState extends State<Passengers> {
  int numberSeven = 7;
  int numberOne = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 500 - 42 - 42 - 42,
          ),
          SizedBox(
            height: 100 + 42 + 42,
            child: Stack(
              children: [
                Positioned(
                  bottom: 0,
                  top: 0,
                  right: 0,
                  left: 0,
                  child: Container(
                    width: 230,
                    height: 230,
                    color: Colors.deepPurpleAccent,
                    // color: Colors.white,
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
