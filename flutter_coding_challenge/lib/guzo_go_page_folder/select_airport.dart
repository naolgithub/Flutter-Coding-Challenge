import 'package:flutter/material.dart';

class SelectAirport extends StatefulWidget {
  const SelectAirport({super.key});

  @override
  State<SelectAirport> createState() => _SelectAirportState();
}

class _SelectAirportState extends State<SelectAirport> {
  TextEditingController editingController = TextEditingController();

  // final duplicateItems = List<String>.generate(10000, (i) => "Item $i");
  final duplicateItems = [
    'Abidjan,Port Bouet Airport (ABJ)',
    'Abuja, Nnamdi Azikiwee International Airport (ABV)',
    'Accra, Kotoka International Airport (ACC)',
    'Ad Dammam, King Fahd International Airport (DMM)',
    'Addis Ababa, Bole International Airport (ADD)',
    'Atananarivo, Ivato Airport (TNR)',
    'Arusha, Kilimanjaro International Airport (JRO)',
    'Asmara, Asmara International Airport (ASM)',
    'Asosa, Asosa Airport (ASO)',
    'Athens, Eleftherios International Airport (ATH)',
    'Awassa, Awassa Airport (AWA)',
    'Bahir Dar, Bahir Dar Airport (BJR)',
    'Bangalore, Bengaluru International Airport (BLR)',
  ];
  var items = <String>[];

  @override
  void initState() {
    items = duplicateItems;
    super.initState();
  }

  void filterSearchResults(String query) {
    setState(() {
      items = duplicateItems
          .where((item) => item.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text(
                  'Select Airport',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w100,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 10.0),
                child: Text(
                  'Cancel',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: (value) {
                filterSearchResults(value);
              },
              controller: editingController,
              decoration: const InputDecoration(
                // fillColor: Colors.red,
                labelText: "Search",
                hintText: "Search",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15.0),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Direct Aiports',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w100,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Card(
                  // elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                  color: Colors.white,
                  child: ListTile(
                    // iconColor: Colors.white,
                    // visualDensity: VisualDensity.adaptivePlatformDensity,
                    minVerticalPadding: 40,
                    title: Row(
                      children: [
                        const Icon(
                          Icons.airplane_ticket_rounded,
                          color: Colors.black,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          items[index],
                          style: const TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
