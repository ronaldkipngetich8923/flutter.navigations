import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  String time = 'loading';

Future<void> setupworldTime() async {
  WorldTime instance =  WorldTime(location: 'Berlin', url: 'Europe/London', flag: 'germany.png');
  await instance.getTime();
  print(instance.time);

  setState(() {
    time =  instance.time;
  });
}

  void initState(){
    super.initState();
    setupworldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nav-loading Screen!"),
      ),
     body: Column(
       children: [
         Text('$time'),
       ],
     )
    );
  }
}
