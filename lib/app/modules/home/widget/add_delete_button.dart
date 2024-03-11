import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Button extends StatelessWidget {
  Button ({super.key,required this.buttonName});

  String buttonName;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      width: 160.w,
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(30).r
      ),
      child: Center(
        child: Text(buttonName,
          style: TextStyle(
              color: Colors.white,
              fontSize: 18.sp,
              fontWeight: FontWeight.w500
          ),
        ),
      ),
    );
  }
}
