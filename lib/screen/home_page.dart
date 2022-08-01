import 'package:flutter/material.dart';
import 'package:ui_design_1/home_page_widgets/app_bar.dart';
import 'package:ui_design_1/home_page_widgets/search_box.dart';
import 'package:ui_design_1/home_page_widgets/tag_list_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  color: Color(0xFFFAFAFA),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Color(0xFFF1F1F1),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 50),
            child: Column(
              children: [
                CustomAppBar(),
                CustomSearchBox(),
                CustomTagButton(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
