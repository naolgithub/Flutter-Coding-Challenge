import 'package:flutter/material.dart';

class GridApp extends StatelessWidget {
  const GridApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grid View Example',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Grid View Example'),
        ),
        body: Column(
          children: [
            const Text('ndfajfa'),
            const SizedBox(
              height: 300,
            ),
            Expanded(
              child: Container(
                // height: 500,
                // width: 500, // Set the width of the Container
                // width: MediaQuery.of(context).size.width,
                color: Colors.white, // Set the color of the Container
                child: GridView(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    // Number of columns in the grid
                    childAspectRatio: 2, // Control the size of the items
                    // mainAxisSpacing: 16.0, // Spacing between rows
                    // crossAxisSpacing: 16.0, // Spacing between columns
                    crossAxisCount: 2,
                  ),
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
                    const GridItem('Item 2'),
                    const GridItem('Item 3'),
                    const GridItem('Item 4'),
                  ],
                ),
              ),
            ),
            TextButton(onPressed: () {}, child: const Text('adfaf'))
          ],
        ),
      ),
    );
  }
}

class GridItem extends StatelessWidget {
  final String itemName;

  const GridItem(this.itemName, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Center(
          child: Text(
            itemName,
            style: const TextStyle(fontSize: 20.0, color: Colors.black),
          ),
        ),
      ),
    );
  }
}
