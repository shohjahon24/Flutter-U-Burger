import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int itemCount = 10;
  int currentSelectedItem = 0;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: 100,
        margin: EdgeInsets.only(top: 10),
        child: ListView.builder(
            itemCount: itemCount,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Stack(
                  children: [
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                              left: index == 0 ? 20 : 0, right: 20),
                          height: 90,
                          width: 90,
                          child: GestureDetector(
                          onTap: () {
                            setState(() {
                              currentSelectedItem = index;
                            });
                          },
                         child: Card(
                           color: currentSelectedItem == index ? Colors.black.withOpacity(0.7) : Colors.white,
                            child: Icon(
                              Icons.fastfood,
                              color:  currentSelectedItem == index ? Colors.white : Colors.black.withOpacity(0.7),
                            ),
                            elevation: 3,
                            margin: EdgeInsets.all(10),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25)),
                          ),
                          )
                        )
                      ],
                    ),
                    Positioned(
                      bottom: 0,
                      child: Container(
                        margin: EdgeInsets.only(
                            left: index == 0 ? 20 : 0, right: 20),
                        width: 90,
                        child: Row(
                          children: [
                            Spacer(),
                            Text("Burger"),
                            Spacer(),
                          ],
                        ),
                      ),
                    )
                  ],
                )),
      ),
    );
  }
}
