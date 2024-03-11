import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

InputDecoration buildInputDecoration(IconData icons,String hinttext) {
  return InputDecoration(
    contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8).r,
    filled: true,
    fillColor: const Color(0xffFFFFFF),
    hintText: hinttext,
    hintStyle: TextStyle(
        color: const Color(0xff999999),
        fontWeight: FontWeight.w400,
        fontSize: 14.sp
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(5).r,
      borderSide: BorderSide(
          width: 1.5.w,
          //color: controller.isEmailValid.value? Colors.green : Colors.red
          color: const Color(0xffD9D9D9)
      ),
    ),

    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(5).r,
      borderSide: BorderSide(
          width: 1.5.w,
          color: const Color(0xffD9D9D9)
      ),
    ),

    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius
          .circular(5).r,
      borderSide: BorderSide(
          width: 1.5.w,
          color: const Color(0xffD9D9D9)
      ),
    ),

  );
}

/*
decoration:
*/