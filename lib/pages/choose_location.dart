import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
var counter = 0;

void getData() async {
  //simulate anetwork request for a username
 String username = await Future.delayed(Duration(seconds: 3),(){
    return 'yoshi';
  });

//simulate anetwork request to get bio of user
  String bio = await Future.delayed(Duration(seconds: 2),(){
   return 'musician, egg collector';
  });

  print('$username - $bio');
}

  void initState(){
    super.initState();
    getData();
    print('hey there. . .');
  }

  @override
  Widget build(BuildContext context) {
    print('build function ran');
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('choose location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: FloatingActionButton(
          onPressed: ()
               {
                 setState(() {
                   counter +=1;
                 });
               },
          child: Text('counter is $counter'),
        ),
      ),
    );
  }
}

