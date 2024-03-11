import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../add_element/widget/input_decoration.dart';
import '../controllers/update_details_controller.dart';

class UpdateDetailsView extends GetView<UpdateDetailsController> {
  const UpdateDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    controller.onInit();

    return Scaffold(
      appBar: AppBar(
        title: Text('Update Project',
          style: TextStyle(
            fontSize: 25.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: controller.isLoading.value?
      SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Obx(() {
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20).r,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Project Name",
                  style: TextStyle(
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 5.h,),
                SizedBox(
                  //height: 40.h,
                  width: double.infinity,

                  ///  Project Name
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    controller: controller.projectNameController.value,
                    decoration: buildInputDecoration(
                        Icons.mail, "Project Name"),
                    onChanged: (String value) {
                      controller.projectNameController.value.text = value;
                    },
                  ),
                ),

                SizedBox(height: 10.h,),

                Text("Project Start Date",
                  style: TextStyle(
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 5.h,),
                SizedBox(
                  //height: 40.h,
                  width: double.infinity,
                  /// Project Start Date
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    controller: controller.startDateController.value,
                    decoration: buildInputDecoration(
                        Icons.mail, "Project Start Date"),
                    onChanged: (String value) {
                      controller.startDateController.value.text = value;
                    },
                  ),
                ),

                SizedBox(height: 10.h,),

                Text("Project End Date",
                  style: TextStyle(
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 5.h,),
                SizedBox(
                  //height: 40.h,
                  width: double.infinity,

                  /// Project Start Date
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    controller: controller.endDateController.value,
                    decoration: buildInputDecoration(
                        Icons.mail, "Project End Date"),
                    onChanged: (String value) {
                      controller.endDateController.value.text = value;
                    },
                  ),
                ),

                SizedBox(height: 10.h,),
                Text("Project Update Information",
                  style: TextStyle(
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 5.h,),
                SizedBox(
                  //height: 40.h,
                  width: double.infinity,

                  /// Project Update
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    controller: controller.projectUpdateController.value,
                    decoration: buildInputDecoration(
                        Icons.mail, "Project Update Information"),

                    onChanged: (String value) {
                      controller.projectUpdateController.value.text = value;
                    },
                  ),
                ),

                SizedBox(height: 10.h,),

                Text("Assigned Engineer Name",
                  style: TextStyle(
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 5.h,),
                SizedBox(
                  //height: 40.h,
                  width: double.infinity,

                  /// Assigned Technician Name
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    controller: controller.assignedEngineerController.value,
                    decoration: buildInputDecoration(
                        Icons.mail, "Assigned Engineer Name"),
                    onChanged: (String value) {
                      controller.assignedEngineerController.value.text = value;
                    },
                  ),
                ),

                SizedBox(height: 10.h,),

                Text("Assigned Technician Name",
                  style: TextStyle(
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 5.h,),
                SizedBox(
                  //height: 40.h,
                  width: double.infinity,

                  /// Assigned Technician Name
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    controller: controller.assignedTechnicianController.value,
                    decoration: buildInputDecoration(
                        Icons.mail, "Assigned Technician Name"),
                    onChanged: (String value) {
                      controller.assignedTechnicianController.value.text =
                          value;
                    },
                  ),
                ),


                SizedBox(height: 30.h,),


                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(375.w, 48.h),
                    backgroundColor: Colors.blue.shade900,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius
                          .circular(5.0)
                          .r,
                    ),
                  ),
                  onPressed: () {
                    controller.updateDetails();
                  },
                  child: Text("Save",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w500
                    ),
                  ),
                ),
              ],
            ),
          );
        }),
      ):
          Center(child: CircularProgressIndicator(color: Colors.blue.shade600,),)
    );
  }
}
