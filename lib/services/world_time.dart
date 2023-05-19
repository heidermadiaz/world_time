import 'package:http/http.dart';
import 'dart:convert';

class worldTime {
  String location = ''; //location name for the UI
  String time = ''; // the time in that locaction
  String flag = ''; //url to an asset flag icon
  String url = ''; //locacion url for api endppoint

  worldTime({required this.location, required this.flag, required this.url});

  Future<void> getTime() async {
    //make the reques
    var url1 = Uri.parse('https://worldtimeapi.org/api/timezone/$url');
    Response response = await get(url1);

    Map data = jsonDecode(response.body);
    //print(data);
    //get propertis from data

    String datatime = data['datetime'];
    String offset = data['utc_offset'].substring(1, 3);
    //print(datatime);
    //print(offset);

    //create DateTime object

    DateTime now = DateTime.parse(datatime);
    now = now.add(Duration(hours: int.parse(offset)));

//set time property
    time = now.toString();
  }
}

worldTime instance =
    worldTime(location: 'Berlin', flag: 'germany.png', url: 'Europe/Berlin');
