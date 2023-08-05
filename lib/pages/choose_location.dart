import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
var counter = 0;

void getData(){
      //simulate anetwork request for a suername
  Future.delayed(Duration(seconds: 3),(){
    print('yoshi');
  });

  print('statement');
}

  void initState(){
    super.initState();
    getData();
    print('initState function ran');
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

