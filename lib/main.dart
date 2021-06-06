import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Container(child: Text("Ecom App UI")),
              Container(
                child: Icon(
                  Icons.notifications,
                ),
              )
            ],
          ),
        ),
        body: Home(),
      ),
    );
  }
}
