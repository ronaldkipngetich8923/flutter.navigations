import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigations"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              child: MaterialButton(
                onPressed: ( ) {
                  Navigator.pushNamed(context, '/location');
                },
                height: 10.0,
                minWidth: 10.0,
                color: Colors.grey,
                padding: EdgeInsets.all(0),
                child: Text(
                  "Edit Location",
                  style: TextStyle(color: Colors.white),

                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}