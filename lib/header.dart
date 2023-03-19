import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SliverList(
        delegate: SliverChildListDelegate([
      Stack(
        children: [
          Column(children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              height: size.height / 5,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(45)),
                  boxShadow: [BoxShadow(blurRadius: 2)]),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white70,
                        radius: 35,
                        child: CircleAvatar(
                            backgroundImage: AssetImage("images/hamburger.png"),
                            radius: 34),
                      ),
                      SizedBox(width: 5),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Wanted Jack",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.black54),
                            child: Text(
                              "GOLD member",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Text(
                        "\$154  US",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ]),
          Positioned(
              bottom: 0,
              child: Container(
                height: 50,
                width: size.width,
                child: Card(
                  margin: EdgeInsets.symmetric(horizontal: 50),
                  elevation: 3,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        labelText: "What does your belly want to eat?",
                        suffixIcon: Icon(Icons.search),
                        contentPadding: EdgeInsets.only(left: 20)),
                  ),
                ),
              ))
        ],
      ),
    ]));
  }
}
