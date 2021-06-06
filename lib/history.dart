import 'package:flutter/material.dart';

class History extends StatefulWidget {
  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),

            // Text Field
            Container(
              height: 40,
              width: 280,
              child: TextField(
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: ("Username"),
                    hintStyle: TextStyle(color: Colors.black)),
              ),
            ),
            
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.only(right: 220),
              child: Text("History"),
            ),
            // Iphone 12
            Container(
                padding: EdgeInsets.only(top: 5),
                child: hist('assets/iphone 12 pro.jpg', "Iphone 12")),
            // Macbook air
            Container(child: hist('assets/macbook air.jpeg', "Macbook Air")),
            // Macbook pro
            Container(child: hist('assets/macbook pro.jpg', "Macbook Pro")),
            // Note 20 ultra
            Container(child: hist('assets/note 20 ultra.jpg', "Note 20 Ultra")),
            // Gaming pc
            Container(child: hist('assets/gaming pc.jpg', "Gaming PC")),
            // Backlit keyboard
            Container(
                child: hist('assets/backlit keyboard.jpg', "Backlit Keyboard")),
            // Mercedes
            Container(child: hist('assets/mercedes.jpg', "Mercedes")),
            // Mutton
            Container(child: hist('assets/mutton.jpg', "Mutton")),
            // Roadster
            Container(child: hist('assets/roadster.jpg', "Roadster")),
            // Royal field
            Container(child: hist('assets/royal field.jpg', "Royal Field")),
          ],
        ),
      ),
    );
  }
}

Widget hist(path, name) {
  return ListTile(
    leading: CircleAvatar(
      backgroundImage: AssetImage(path),
      radius: 20,
    ),
    title: Text(
      name,
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    subtitle: Row(
      children: [
        Container(
          child: Icon(
            Icons.star,
            color: Colors.yellow,
            size: 15,
          ),
        ),
        Container(
          child: Text(" 5.0 (23 Review)"),
        )
      ],
    ),
    trailing: Text("\$10"),
  );
}
