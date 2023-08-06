import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {


Future<void> setupworldTime() async {
  WorldTime instance =  WorldTime(location: 'Berlin', url: 'Europe/London', flag: 'germany.png');
  await instance.getTime();

  Navigator.pushReplacementNamed(context, '/home', arguments: {
    'location': instance.location,
    'flag': instance.flag,
    'time': instance.time,
    'isDaytime' : instance.isDaytime,
  }
  );
}

  void initState(){
    super.initState();
    setupworldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
         body: Center(
           child: SpinKitFadingCube(
             color: Colors.white,
             size: 80.0,
           ),
         ),
    );
  }
}
