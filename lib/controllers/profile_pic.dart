import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
class ProfilePicture extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 5.w, top: 2.h),
          child: RichText(text: TextSpan(style: TextStyle(
              color: Colors.black),
            children: [
              TextSpan(
                  text: ' 2 BEDROOM APARTMENT FOR ', style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.sp,
                fontFamily: 'Poppins',)),
              TextSpan(
                  text: '\n RENT AT TSE ADDO', style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.sp,
                fontFamily: 'Poppins',))
            ],
          )),
        ),
        Padding(
          padding: EdgeInsets.only(left: 5.w, top: 1.8.h),
          child:
          Container(
            height: 8.h,
            width: 12.w,
            decoration: BoxDecoration(shape: BoxShape.circle,
                border: Border.all(color: Colors.blue, width: 2.0),
                color: Colors.black),
          ),
        ),
      ],
    );
  }
}
