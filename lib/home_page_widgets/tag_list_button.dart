import 'package:flutter/material.dart';

class CustomTagButton extends StatefulWidget {
  const CustomTagButton({Key? key}) : super(key: key);

  @override
  State<CustomTagButton> createState() => _CustomTagButtonState();
}

class _CustomTagButtonState extends State<CustomTagButton> {
  final List _tagButtonList = ['All', '⭐  Recommended', '⚡  Popular', 'Feature', 'Favorite'];
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10,left: 10,right: 10),
      height: 45,
      // color: Colors.red,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: _tagButtonList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: (){
              setState(() {
                selected = index;
              });
            },
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
              decoration: BoxDecoration(
                color: selected == index?Color(0xFFD8F3F3):Color(0xFFFFFFFF),
                borderRadius: BorderRadius.circular(40),
                border: Border.all(
                  width: 3,
                  color: selected == index?Colors.transparent:Color(0xFFD8F3F3),
                )
              ),
              child: Text(_tagButtonList[index],style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),),
            ),
          );
        },
          separatorBuilder: (context, index) {
            return SizedBox(width: 12,);
          },
      ),
    );
  }
}
