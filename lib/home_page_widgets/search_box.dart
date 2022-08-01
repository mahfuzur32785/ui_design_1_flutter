import 'package:flutter/material.dart';

class CustomSearchBox extends StatelessWidget {
  const CustomSearchBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10,vertical: 25),
      height: 300,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        image: DecorationImage(
          image: AssetImage('images/images/search_bg.png'),
          fit: BoxFit.cover,
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: 30,vertical: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Fast Search',style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),),
          SizedBox(height: 10,),
          Text('You can search quickly for \n the job you want',style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            height: 2,
            color: Colors.white.withOpacity(0.5),
          ),),
          SizedBox(height: 25,),
          Container(
            height: 55,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40)
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 20,),
              child: Row(
                children: [
                  Icon(Icons.search_rounded,size: 40,color: Colors.grey.withOpacity(0.5),),
                  SizedBox(width: 10,),
                  Text('Search',
                    style: TextStyle(
                      color: Colors.grey.withOpacity(0.4),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),

                  ),
                ],
              ),
            )
          ),
        ],
      ),
    );
  }
}
