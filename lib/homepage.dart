
import 'package:responsive_apartment_details/controllers/buttons.dart';
import 'package:responsive_apartment_details/controllers/cruselslider.dart';
import 'package:responsive_apartment_details/controllers/profile_pic.dart';
import 'package:responsive_apartment_details/controllers/tabbar_view.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return ResponsiveSizer(
        builder: (context, orientation, screenType) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,

            home: Scaffold(
              body: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  /// FIRST ROW START FROM HERE
                  Stack(
                    children: [
                      CarouselHome(),
                      ///Back Arrow
                      Positioned(
                        top: 9.h,
                        left: 5.w,
                        child: Container(
                          width:11.1.w,
                          height: 5.1.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(52),
                            color: const Color(0xff0336FF),
                          ),
                          child:  Icon(
                              Icons.arrow_back_ios_rounded, color: Colors.white,
                              size: 17.sp),
                        ),
                      ),
                      /// Move Vert Icoon
                       Positioned(
                        top: 8.h,
                        right: 1.w,
                        child: Icon(
                          Icons.more_vert, color: Color(0xffFFFFFF),
                          size: 28.sp,),),
                    ],),
             ProfilePicture(),
                  Buttons(),
                  TabScreen(),

                ],
              ),



            ),

          );
        }
    );

  }
}