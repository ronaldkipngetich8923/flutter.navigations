import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
   String location;
   String time = '';
   String flag;
   String url;
   bool isDaytime = true;

  WorldTime({ required this.location,required this.url, required this.flag });


  Future<void> getTime() async {
    try
    { Response response = await get(Uri.parse('http://worldtimeapi.org/api/timezone/$url'));
    if (response.statusCode == 200) {
      Map data =   jsonDecode(response.body);
      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(1,3);

      DateTime now = DateTime.parse(datetime);
      now = now.subtract(Duration(hours:int.parse(offset)));

      isDaytime = now.hour > 6 && now.hour < 20? true : false;

      time = DateFormat.jm().format(now);
    } else {
      throw Exception('Failed to load album');
    }
    }catch (e ) {
      print('$e');
    }
    }
}


