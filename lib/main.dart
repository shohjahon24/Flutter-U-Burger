import 'package:flutter/material.dart';
import 'package:untitled1/burger_page.dart';
import 'package:untitled1/categories.dart';
import 'package:untitled1/hamburgers_list.dart';

import 'header.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: AppBarTheme(color: Colors.teal, centerTitle: true),
          primarySwatch: Colors.blue,
          bottomAppBarTheme: BottomAppBarTheme(color: Colors.teal),
          cardColor: Colors.white,
          primaryColor: Colors.teal,
          floatingActionButtonTheme:
              FloatingActionButtonThemeData(backgroundColor: Colors.orange)),
      home: Hamburger(),
      routes: {BurgerPage.tag: (_) => BurgerPage()},
    );
  }
}

class Hamburger extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HamburgerState();
}

class _HamburgerState extends State<Hamburger> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              floating: true,
              expandedHeight: 60,
              title: Text("Deliver Me"),
              leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
              actions: [
                IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart))
              ],
            ),
            Header(),
            Categories(),
            HamburgersList(
              row: 1,
            ),
            HamburgersList(row: 2),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.home),
        ),
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.vertical(top: Radius.circular(45)),
          child: BottomAppBar(
            color: Colors.teal.withOpacity(0.7),
            shape: CircularNotchedRectangle(),
            child: Row(
              children: [
                Spacer(),
                IconButton(
                  icon: Icon(Icons.add_alert),
                  onPressed: () {},
                ),
                Spacer(),
                Spacer(),
                IconButton(
                  icon: Icon(Icons.turned_in),
                  onPressed: () {},
                ),
                Spacer()
              ],
            ),
          ),
        ));
  }
}
