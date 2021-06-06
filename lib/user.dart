import 'package:flutter/material.dart';

class User extends StatefulWidget {
  @override
  _UserState createState() => _UserState();
}

class _UserState extends State<User> {
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

      body: Stack(
        children: [
          Positioned(
            top: 10,
            left: 10,
            child: Container(
              height: 120,
              width: 140,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/user.png'))),
            ),
          ),

          Positioned(
            top: 10,
            left: 150,
            child: Container(
              height: 120,
              width: 140,
              child: us("User"),
            ),
          ),

          Positioned(
            top: 140,
            left: 10,
            child: Container(
              child: Text(
                "ACCOUNT INFORMATION",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
          ),

          Positioned(
            top: 150,
            left: 5,
            child: Container(
              child: Container(
                height: 50,
                width: 270,
                child: info("Full Name", "User"),
              ),
            ),
          ),

          Positioned(
            top: 195,
            left: 5,
            child: Container(
              child: Column(
                children: [
                  Container(
                    height: 50,
                    width: 270,
                    child: info("Email", "user@gmail.com"),
                  )
                ],
              ),
            ),
          ),

          Positioned(
            top: 240,
            left: 5,
            child: Container(
              child: Column(
                children: [
                  Container(
                    height: 50,
                    width: 270,
                    child: info("Phone", "+0900-786 01"),
                  )
                ],
              ),
            ),
          ),

          Positioned(
            top: 285,
            left: 5,
            child: Container(
              child: Column(
                children: [
                  Container(
                    height: 50,
                    width: 270,
                    child:
                        info("Address", "NewYork, Random street house no.72"),
                  )
                ],
              ),
            ),
          ),

          Positioned(
            top: 330,
            left: 5,
            child: Container(
              child: Column(
                children: [
                  Container(
                    height: 50,
                    width: 270,
                    child: info("Gender", "Male"),
                  )
                ],
              ),
            ),
          ),
          
          Positioned(
            top: 375,
            left: 5,
            child: Container(
              child: Column(
                children: [
                  Container(
                    height: 50,
                    width: 270,
                    child: info("Date of Birth", "October 13, 1999"),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

Widget us(name) {
  return ListTile(
    title: Container(
      padding: EdgeInsets.only(top: 10),
      child: Text(
        name,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
      ),
    ),
    subtitle: Column(
      children: [
        Container(
          padding: EdgeInsets.only(top: 10),
          child: Text(
            "abc@gmail.com",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 20, right: 60),
          child: Text(
            'logout',
            style: TextStyle(color: Colors.purple),
          ),
        )
      ],
    ),
  );
}

Widget info(x, y) {
  return ListTile(
    title: Container(
      child: Text(
        x,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
      ),
    ),
    subtitle: Container(child: Text(y)),
  );
}
