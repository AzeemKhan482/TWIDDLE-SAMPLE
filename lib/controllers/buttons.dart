import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
class Buttons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 5.w,top: 0.7.h),
      child: Row(
        children: [
          InkWell(
            splashColor: Color(0xff0336FF),
            onTap: () {},
            child: Container(
              height: 5.5.h,
              width: 35.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: Color(0xff0336FF),
                  boxShadow: const [
                    BoxShadow(
                        color: Color(0xFFd8dbe0),
                        offset: Offset(0.5, 0.5),
                        blurRadius: 10.0,
                        spreadRadius: 2)
                  ]),
              child:
              Padding(
                padding: EdgeInsets.only(left: 18.0),
                child: Row(

                    children: [
                      Icon(Icons.chat,color: Colors.white,size: 20.sp,),
                  Text('Start Chat',
                    style:  TextStyle(
                        color: Colors.white, fontSize: 15.sp, fontFamily: 'Poppins'),
                  ),
                ]),
              ),
            ),
          ),
          ///Second Button
          Padding(
            padding:  EdgeInsets.only(left:10.0),
            child: InkWell(
              splashColor: Colors.orange,
              onTap: () {},
              child: Container(
                height: 5.5.h,
                width: 35.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: Colors.orange,
                ),
                child:
                Center(
                  child: Text('Visit Property',
                    style: TextStyle(
                        color: Colors.white, fontSize: 15.sp, fontFamily: 'Poppins'),
                  ),
                ),
              ),
            ),
          ),
          /// Third Button
          Padding(
            padding:  EdgeInsets.only(left: 4.w),
            child: InkWell(
              splashColor: Color(0xff01E08F),
              onTap: (){
              },
              child: Container(
                height: 5.2.h,
                width: 11.2.w,
                decoration: BoxDecoration( borderRadius: BorderRadius.circular(52),color: Color(0xff01E08F),
                    boxShadow: const [
                      BoxShadow(
                          color: Color(0x01E08F33),
                          offset: Offset(0.5, 0.5),
                          blurRadius: 10.0,
                          spreadRadius: 2)
                    ]
                ),
                child: Icon(Icons.location_on_outlined,color: Colors.white,),
              ),
            ),
          )
        ],
      ),
    );
  }
}
