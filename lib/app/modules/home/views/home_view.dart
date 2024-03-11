import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:keep_track_project_scube/app/modules/add_element/controllers/add_element_controller.dart';
import 'package:keep_track_project_scube/app/modules/home/widget/add_delete_button.dart';
import 'package:keep_track_project_scube/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';
import '../widget/details_update_button.dart';

class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);

  final HomeController myController = Get.put(HomeController());

  @override
  // TODO: implement controller
  @override
  Widget build(BuildContext context) {
    controller.onInit();
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title:  Text('All Project',
            style: TextStyle(
                color: Colors.black,
                fontSize: 25.sp, fontWeight: FontWeight.w500
            ),
          ),
          centerTitle: true,
        ),
        body: Obx(() {
          return Container(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 20).r,
            height: double.infinity,
            width: double.infinity,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Get.toNamed(Routes.ADD_ELEMENT);
                      },
                      child: Button(buttonName: "Add",),
                    ),
                    SizedBox(width: 20.w,),
                    InkWell(
                      onTap:() {
                        showDialog(context: context, builder: (BuildContext contex){
                            return AlertDialog(
                              contentPadding: EdgeInsets.zero,
                              content: Builder(
                              builder: (context){
                                return Container(
                                  height: 150.h,
                                  width: 200.w,
                                  color: Colors.white,
                                  child: Center(
                                    child: Text("Sorry Bro 😞\nYou Can't Delete Any Project",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 14.sp
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                            );
                          }
                        );
                      },
                      child: Button(buttonName: "Delete")
                    ),
                  ],
                ),
                SizedBox(height: 20.h,),
                controller.isLoading.value?
                Expanded(
                  child: ListView.builder(
                    itemCount: controller.projectList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10).r,
                            margin: const EdgeInsets.only(top: 5, bottom: 5).r,
                            decoration: BoxDecoration(
                                color: Colors.blue.shade200,
                                borderRadius: BorderRadius.circular(15).r
                            ),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Project ID: ",
                                      style: TextStyle(
                                          fontSize: 25.sp,
                                          fontWeight: FontWeight.w500
                                      ),
                                    ),
                                    Text(
                                      controller.projectIdList[index],
                                      style: TextStyle(
                                          fontSize: 25.sp,
                                          fontWeight: FontWeight.w500
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: 10.h,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        Get.toNamed(Routes.PROJECT_DETAILS,
                                            arguments: [
                                              controller.projectList[index].id
                                                  .toString(),
                                              controller.projectList[index]
                                                  .startDate.toString(),
                                              controller.projectList[index]
                                                  .endDate.toString(),
                                              controller.projectList[index]
                                                  .startDayOfYear.toString(),
                                              controller.projectList[index]
                                                  .endDayOfYear.toString(),
                                              controller.projectList[index]
                                                  .projectName.toString(),
                                              controller.projectList[index]
                                                  .projectUpdate.toString(),
                                              controller.projectList[index]
                                                  .assignedEngineer.toString(),
                                              controller.projectList[index]
                                                  .assignedTechnician
                                                  .toString(),
                                              controller.projectList[index]
                                                  .duration.toString(),
                                            ]
                                        );
                                      },
                                      child: DetailsUpdateButton(
                                        buttonName: "Details",),
                                    ),
                                    SizedBox(width: 20.w,),
                                    InkWell(
                                      onTap: () {
                                        Get.toNamed(Routes.UPDATE_DETAILS,
                                            arguments: [index]
                                        );
                                      },
                                      child: DetailsUpdateButton(
                                        buttonName: "Update",),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      );
                    },
                  ),
                ):
                Center(child: CircularProgressIndicator(color: Colors.blue.shade600,),)
              ],
            ),
          );
        })
    );
  }
}
