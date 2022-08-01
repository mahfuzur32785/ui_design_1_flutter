import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui_design_1/buttom_nav_bar/custom_buttom_nav.dart';
import 'package:ui_design_1/screen/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,

      )
    );
    /*systemOverlayStyle: SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.blue, // Navigation bar
      statusBarColor: Colors.pink, // Status bar
    );*/
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CustomButtomNavBar(),
    );
  }
}
