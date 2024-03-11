import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../home/widget/add_delete_button.dart';
import '../../home/widget/details_update_button.dart';
import '../controllers/show_parcels_controller.dart';

class ShowParcelsView extends GetView<ShowParcelsController> {
  const ShowParcelsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title:  Text('Show All Parcels',
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
                        Get.toNamed(Routes.CREATE_PARCEL);
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
                    itemCount: controller.allParcelList.length,
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
                                    Text("Parcel ID: ",
                                      style: TextStyle(
                                          fontSize: 25.sp,
                                          fontWeight: FontWeight.w500
                                      ),
                                    ),
                                    Text(
                                      "",
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
                                              /*controller.projectList[index]
                                                  .duration.toString(),*/
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
