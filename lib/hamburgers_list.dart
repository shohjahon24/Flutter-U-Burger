import 'package:flutter/material.dart';
import 'package:untitled1/burger_page.dart';

class HamburgersList extends StatefulWidget {
  final int row;

  HamburgersList({required this.row});

  @override
  _HamburgersList createState() => _HamburgersList();
}

class _HamburgersList extends State<HamburgersList> {
  @override
  Widget build(BuildContext context) {
    int itemCount = 10;
    Widget baconImage = Container(
      height: 120,
      width: 120,
      child: Image.asset("images/ham_burger.png"),
    );
    Widget chickenImage = Container(
      height: 120,
      width: 120,
      child: Image.asset("images/hamburger.png"),
    );
    return SliverToBoxAdapter(
      child: Container(
        margin: EdgeInsets.only(top: 10),
        height: widget.row == 2 ? 330 : 240,
        child: ListView.builder(
            itemCount: itemCount,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              bool reverse = widget.row == 2 ? index.isEven : index.isOdd;
              return Stack(
                children: [
                  Container(
                    height: 240,
                    width: 200,
                    margin: EdgeInsets.only(
                        left: 20, right: index == itemCount - 1 ? 20 : 0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed(BurgerPage.tag);
                      },
                      child: Card(
                        color: Theme.of(context).primaryColor,
                        elevation: 3,
                        margin: EdgeInsets.all(10),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(45),
                          bottomRight: Radius.circular(15),
                          topLeft: Radius.circular(45),
                          topRight: Radius.circular(45),
                        )),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Column(
                            children: [
                              Text(
                                reverse ? "Chicken Burger" : "Bacon Burger",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              Spacer(),
                              Row(
                                children: [
                                  Spacer(),
                                  Text(
                                    "\$15.95 US",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Spacer(),
                                  Container(
                                      width: 50,
                                      height: 50,
                                      child: Card(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: Icon(Icons.add)))
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                      top: 60,
                      left: reverse ? 68 : 60,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed(BurgerPage.tag);
                        },
                        child: reverse ? baconImage : chickenImage,
                      ))
                ],
              );
            }),
      ),
    );
  }
}
