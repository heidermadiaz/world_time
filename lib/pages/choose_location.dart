import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  List<worldTime> locations = [
    worldTime(url: 'Europe/London', location: 'London', flag: 'uk.png'),
    worldTime(url: 'Europe/Berlin', location: 'Athens', flag: 'greece.png'),
    worldTime(url: 'Africa/Cairo', location: 'Cairo', flag: 'egypt.png'),
    worldTime(url: 'Africa/Nairobi', location: 'Nairobi', flag: 'kenya.png'),
    worldTime(url: 'America/Chicago', location: 'Chicago', flag: 'usa.png'),
    worldTime(
        url: 'America/New_York', location: 'New York', flag: 'Newyork.png'),
    worldTime(url: 'Asia/Seoul', location: 'Seoul', flag: 'south_korea.png'),
    worldTime(url: 'Asia/Jakarta', location: 'Jakarta', flag: 'indonesia.png'),
  ];

  @override
  Widget build(BuildContext context) {
    int counter = 0;
    print('build function ran');
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Text('choose a location'),
          centerTitle: true,
          elevation: 0,
        ),
        body: ListView.builder(
          itemCount: locations.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                onTap: () {},
                title: Text(locations[index].location),
                leading: CircleAvatar(
                    // backgroundImage: AssetImage(assetName),
                    ),
              ),
            );
          },
        ));
  }
}
