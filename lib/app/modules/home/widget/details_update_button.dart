import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailsUpdateButton extends StatelessWidget {
  DetailsUpdateButton ({super.key,required this.buttonName});

  String buttonName;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      width: 120.w,
      decoration: BoxDecoration(
          color: Colors.grey.shade800,
          borderRadius: BorderRadius.circular(30).r
      ),
      child: Center(
        child: Text(buttonName,
          style: TextStyle(
              color: Colors.white70,
              fontSize: 14.sp,
              fontWeight: FontWeight.w400
          ),
        ),
      ),
    );
  }
}
