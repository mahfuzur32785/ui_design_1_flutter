import 'package:flutter/material.dart';
import 'package:ui_design_1/model_class/job.dart';

class JobListViewItem extends StatelessWidget {
  //const JobListViewItem({Key? key}) : super(key: key);
  JobListViewItem(this._jobList);
  Job _jobList;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.64,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
      decoration: BoxDecoration(
        color: Color(0xFFFDFDFD),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      color: Color(0xFFF1F1F1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Image.asset(
                      _jobList.logoUrl,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    _jobList.company,
                    style: TextStyle(
                      color: Color(0xFF545454),
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              Icon(
                Icons.bookmark_outline_outlined,
                color: Colors.grey,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 18),
            child: Text(
              _jobList.title,
              style: TextStyle(
                color: Color(0xFF1D2121),
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ),
          Row(
            children: [
              Icon(
                Icons.location_on_outlined,
                color: Colors.yellow,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                _jobList.location,
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
