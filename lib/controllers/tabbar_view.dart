//import 'package:apartmentdetails/controllers/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:responsive_apartment_details/controllers/bottom_bar.dart';
//import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TabScreen extends StatelessWidget {
  const TabScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 3,
      child: Column(
          children: [
            Padding(
              padding:  EdgeInsets.only(top: 2.2.h),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12, width: 0.2.w),
                    color: Colors.white),
                child: TabBar(
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  tabs: [
                    Tab(text: 'Description',),
                    Tab(text: 'Specifications'),
                    Tab(text: 'Gallery'),
                  ],
                ),
              ),
            ),


            Container(
              width: double.maxFinite,
              height: 19.6.h,
              child: TabBarView(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 1.5.h),
                    child: RichText(text: TextSpan(style: TextStyle(
                        color: Colors.black),
                        children: [
                          TextSpan(
                              text: ' Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo. ', style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Poppins',)),]),),
                  ),
                  Specifications(),
                  Center(child: Text('Gallery Images',style: TextStyle(wordSpacing: 15,fontSize: 25),)),

                ],
              ),
            ),
           BottomBar(),
          ]
      ),
    );
  }
}
class Specifications extends StatelessWidget {
  const Specifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
           // SvgPicture.asset('assets/TabView/Tap.svg'),
          //  SvgPicture.asset('assets/TabView/Bed.svg'),
           // SvgPicture.asset('assets/TabView/Kitchen.svg'),
           // SvgPicture.asset('assets/TabView/Ac.svg'),
          ],
        ),
      ],
    );
  }
}
