import 'package:flutter/material.dart';
import 'package:muzammil_assignment/history.dart';

import 'user.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: 750,
          color: Color(0xffd1ede7),
          child: Stack(
            children: [
              // Iphone
              Positioned(
                top: 10,
                left: 10,
                child: Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage('assets/iphone 12 pro.jpg'),
                        fit: BoxFit.fill,
                      )),
                ),
              ),
              Positioned(
                top: 10,
                left: 140,
                child: Container(
                  height: 120,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: ui("Iphone"),
                ),
              ),

              // Macbook air
              Positioned(
                top: 145,
                left: 10,
                child: Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage('assets/macbook air.jpeg'),
                        fit: BoxFit.fill,
                      )),
                ),
              ),
              Positioned(
                top: 145,
                left: 140,
                child: Container(
                  height: 120,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: ui("Macbook Air"),
                ),
              ),

              // Macbook pro
              Positioned(
                top: 280,
                left: 10,
                child: Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage('assets/macbook pro.jpg'),
                        fit: BoxFit.fill,
                      )),
                ),
              ),
              Positioned(
                top: 280,
                left: 140,
                child: Container(
                  height: 120,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: ui("Macbook Pro"),
                ),
              ),

              // Note 20 Ultra
              Positioned(
                top: 420,
                left: 10,
                child: Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage('assets/note 20 ultra.jpg'),
                        fit: BoxFit.fill,
                      )),
                ),
              ),
              Positioned(
                top: 420,
                left: 140,
                child: Container(
                  height: 120,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: ui("Note 20 Ultra"),
                ),
              ),

              // Gaming PC
              Positioned(
                top: 560,
                left: 10,
                child: Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage('assets/gaming pc.jpg'),
                        fit: BoxFit.fill,
                      )),
                ),
              ),
              Positioned(
                top: 560,
                left: 140,
                child: Container(
                  height: 120,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: ui("Gaming PC"),
                ),
              ),

              // Login Button
              Positioned(
                top: 700,
                left: 50,
                child: Container(
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => User()));
                        },
                        child: Text("Login Page"))),
              ),

              // History Button
              Positioned(
                top: 700,
                left: 160,
                child: Container(
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => History()));
                        },
                        child: Text("History"))),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget ui(product) {
  return ListTile(
    title: Container(
      padding: EdgeInsets.only(top: 10),
      child: Text(
        product,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    subtitle: Column(
      children: [
        Row(
          children: [
            Container(
              padding: EdgeInsets.only(top: 5),
              child: Icon(
                Icons.star,
                color: Colors.yellow,
                size: 15,
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 5),
              child: Text(" 5.0 (23 Review)"),
            )
          ],
        ),
        Container(
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.only(top: 5),
                child: Text("20 Pieces"),
              ),
              Container(
                padding: EdgeInsets.only(top: 5),
                child: Text(
                  "  \$90",
                  style: TextStyle(
                      color: Colors.purple,
                      fontWeight: FontWeight.w500,
                      fontSize: 16),
                ),
              )
            ],
          ),
        ),
        Container(
          child: Text("Quantity: 1"),
          padding: EdgeInsets.only(right: 50, top: 5),
        )
      ],
    ),
  );
}
