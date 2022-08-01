import 'package:flutter/material.dart';
import 'package:pandabar/pandabar.dart';
import 'package:ui_design_1/screen/home_page.dart';
import 'package:ui_design_1/screen/person_page.dart';

class CustomButtomNavBar extends StatefulWidget {
  const CustomButtomNavBar({Key? key}) : super(key: key);

  @override
  State<CustomButtomNavBar> createState() => _CustomButtomNavBarState();
}

class _CustomButtomNavBarState extends State<CustomButtomNavBar> {
  String page = 'Home';
  _getPage(page) {
    switch (page) {
      case 'Home':
        return HomePage();
      case 'Blue':
        return HomePage();
      case 'Red':
        return HomePage();
      case 'Person':
        return PersonPage();
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: _getPage(page),
      ),
      bottomNavigationBar: PandaBar(
        backgroundColor: Colors.white,
        buttonColor: Colors.grey,
        fabColors: [
          Color(0xFFFED40A),
          Color(0xFFFED40A),
        ],
        buttonData: [
          PandaBarButtonData(
            id: 'Home',
            icon: Icons.home,
          ),
          PandaBarButtonData(
            id: 'Blue',
            icon: (Icons.calendar_today_outlined),
          ),
          PandaBarButtonData(
            id: 'Red',
            icon: Icons.web_asset_outlined,
          ),
          PandaBarButtonData(
            id: 'Person',
            icon: Icons.person_outline,
          ),
        ],
        onChange: (id) {
          setState(() {
            page = id;
          });
        },
        onFabButtonPressed: () {},
      ),
    );
  }
}
