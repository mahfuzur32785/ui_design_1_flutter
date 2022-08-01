import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ui_design_1/home_page_widgets/job_list/job_list_view_details.dart';
import 'package:ui_design_1/home_page_widgets/job_list/job_list_view_item.dart';
import 'package:ui_design_1/model_class/job.dart';

class CustomJobListView extends StatelessWidget {
  CustomJobListView({Key? key}) : super(key: key);
  final jobList = Job.generateJobs();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width * 0.4,
      //color: Colors.grey,
      margin: EdgeInsets.only(top: 15),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: jobList.length,
        separatorBuilder: (context, index) {
          return SizedBox(
            width: 10,
          );
        },
        itemBuilder: (context, index) {
          return GestureDetector(
            child: JobListViewItem(jobList[index]),
            onTap: () {
              showModalBottomSheet<bool>(
                  backgroundColor: Colors.white,
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                  ),
                isScrollControlled: true,
                context: context,
                builder: (BuildContext context){
                  /*return MediaQuery(
                    data: MediaQueryData.fromWindow(WidgetsBinding.instance!.window),
                    child: SafeArea(
                      child: JobListViewDetails(jobList[index]),
                    ),
                  );*/
                  return BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 3, sigmaY: 2),
                    child: JobListViewDetails(jobList[index]),
                  );
                }
              );
            },
          );
        },
      ),
    );
  }
}
