import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome home',
                style: TextStyle(
                  color: Color(0xFF9B9B9C),
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Annie Bryanat',
                style: TextStyle(
                    fontSize: 28,
                    color: Color(0xFF24262A),
                    fontWeight: FontWeight.bold,
                    wordSpacing: 2),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Positioned(
                    right: 0,
                    top: 10,
                    child: Container(
                      padding: EdgeInsets.all(4),
                      //margin: EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),),
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    transform: Matrix4.rotationZ(100),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: Icon(Icons.notifications_none_outlined,color: Colors.grey,size: 40,),
                    ),
                  ),
                ],
              ),
              SizedBox(width: 25,),
              Container(
                  child: ClipOval(
                child: Image.asset(
                  'images/images/avatar.png',
                  width: 55,
                ),
              )),
            ],
          )
        ],
      ),
    );
  }
}
