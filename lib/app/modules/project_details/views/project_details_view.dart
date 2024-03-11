import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/project_details_controller.dart';

class ProjectDetailsView extends GetView<ProjectDetailsController> {
  ProjectDetailsView({Key? key}) : super(key: key);
  String id = Get.arguments[0];
  String startDate = Get.arguments[1];
  String endDate = Get.arguments[2];
  String startDayOfYear = Get.arguments[3];
  String endDayOfYear = Get.arguments[4];
  String projectName = Get.arguments[5];
  String projectUpdate = Get.arguments[6];
  String assignedEngineer = Get.arguments[7];
  String assignedTechnician = Get.arguments[8];
  String duration = Get.arguments[0];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Project Details',
          style: TextStyle(
              color: Colors.black,
              fontSize: 25.sp, fontWeight: FontWeight.w500
          ),
        ),
        centerTitle: true,
      ),
      body:  Container(
        padding: const EdgeInsets.all(20).r,
        width: double.infinity,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         children: [
           Text(
             "Project Name",
             style: TextStyle(
                 fontSize: 17.sp,
                 fontWeight: FontWeight.w600
             ),
           ),
           Container(
             padding: const EdgeInsets.all(10).r,
             width: double.infinity,
             decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10).r,
               border: Border.all(color: Colors.grey.shade500)
             ),
             child: Text(
               projectName,
               style: TextStyle(
                   fontSize: 14.sp,
                   fontWeight: FontWeight.w500
               ),
             ),
           ),

           Row(
             children: [
               Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text(
                     "Start Date",
                     style: TextStyle(
                         fontSize: 17.sp,
                         fontWeight: FontWeight.w600
                     ),
                   ),
                   Container(
                     padding: const EdgeInsets.all(10).r,
                     width: 150.w,
                     decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10).r,
                         border: Border.all(color: Colors.grey.shade500)
                     ),
                     child: Text(
                       startDate,
                       style: TextStyle(
                           fontSize: 14.sp,
                           fontWeight: FontWeight.w500
                       ),
                     ),
                   ),

                 ],
               ),
               const Spacer(),
               Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text(
                     "End Date",
                     style: TextStyle(
                         fontSize: 17.sp,
                         fontWeight: FontWeight.w600
                     ),
                   ),
                   Container(
                     padding: const EdgeInsets.all(10).r,
                     width: 150.w,
                     decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10).r,
                         border: Border.all(color: Colors.grey.shade500)
                     ),
                     child: Text(
                       startDate,
                       style: TextStyle(
                           fontSize: 14.sp,
                           fontWeight: FontWeight.w500
                       ),
                     ),
                   ),
                 ],
               ),
             ],
           ),
           Row(
             children: [
               Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text(
                     "Start Day of Year",
                     style: TextStyle(
                         fontSize: 17.sp,
                         fontWeight: FontWeight.w600
                     ),
                   ),
                   Container(
                     padding: const EdgeInsets.all(10).r,
                     width: 150.w,
                     decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10).r,
                         border: Border.all(color: Colors.grey.shade500)
                     ),
                     child: Text(
                       startDayOfYear,
                       style: TextStyle(
                           fontSize: 14.sp,
                           fontWeight: FontWeight.w500
                       ),
                     ),
                   ),

                 ],
               ),
               const Spacer(),
               Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text(
                     "End Day of Year",
                     style: TextStyle(
                         fontSize: 17.sp,
                         fontWeight: FontWeight.w600
                     ),
                   ),
                   Container(
                     padding: const EdgeInsets.all(10).r,
                     width: 150.w,
                     decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10).r,
                         border: Border.all(color: Colors.grey.shade500)
                     ),
                     child: Text(
                       endDayOfYear,
                       style: TextStyle(
                           fontSize: 14.sp,
                           fontWeight: FontWeight.w500
                       ),
                     ),
                   ),

                 ],
               ),
             ],
           ),
           Text(
             "Project Update Information's",
             style: TextStyle(
                 fontSize: 17.sp,
                 fontWeight: FontWeight.w600
             ),
           ),
           Container(
             padding: const EdgeInsets.all(10).r,
             width: double.infinity,
             decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(10).r,
                 border: Border.all(color: Colors.grey.shade500)
             ),
             child: Text(
               projectUpdate,
               style: TextStyle(
                   fontSize: 14.sp,
                   fontWeight: FontWeight.w500
               ),
             ),
           ),
           Text(
             "Name of Assigned Engineer",
             style: TextStyle(
                 fontSize: 17.sp,
                 fontWeight: FontWeight.w600
             ),
           ),
           Container(
             padding: const EdgeInsets.all(10).r,
             width: double.infinity,
             decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(10).r,
                 border: Border.all(color: Colors.grey.shade500)
             ),
             child: Text(
               assignedEngineer,
               style: TextStyle(
                   fontSize: 14.sp,
                   fontWeight: FontWeight.w500
               ),
             ),
           ),
           Text(
             "Name of Assigned Technician",
             style: TextStyle(
                 fontSize: 17.sp,
                 fontWeight: FontWeight.w600
             ),
           ),
           Container(
             padding: const EdgeInsets.all(10).r,
             width: double.infinity,
             decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(10).r,
                 border: Border.all(color: Colors.grey.shade500)
             ),
             child: Text(
               assignedTechnician,
               style: TextStyle(
                   fontSize: 14.sp,
                   fontWeight: FontWeight.w500
               ),
             ),
           ),
           Text(
             "Project Time Duration",
             style: TextStyle(
                 fontSize: 17.sp,
                 fontWeight: FontWeight.w600
             ),
           ),
           Container(
             padding: const EdgeInsets.all(10).r,
             width: double.infinity,
             decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(10).r,
                 border: Border.all(color: Colors.grey.shade500)
             ),
             child: Text(
               duration,
               style:TextStyle(
                   fontSize: 14.sp,
                   fontWeight: FontWeight.w500
               ),
             ),
           ),
         ],
        ),
      ),
    );
  }
}
