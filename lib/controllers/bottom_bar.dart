import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class BottomBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 10.h,
        width: double.infinity,
        decoration:  BoxDecoration(color: Color(0xFFF4f6fD),
            boxShadow: [
              BoxShadow(
                  color: Color(0xFFd8dbe0),
                  offset: Offset(1, 1),
                  blurRadius: 20.0,
                  spreadRadius: 10),
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () {},
              child: RichText(
                text:  TextSpan(
                    text: '150 GHC',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        fontSize: 21.sp,
                        color: Colors.black),
                    children: [
                      TextSpan(
                          text: ' / month',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 15.sp,
                              fontWeight: FontWeight.normal))
                    ]),
              ),
            ),
            InkWell(
                onTap: () {},
                child: Container(
                    height: 6.h,
                    width: 40.w,
                    decoration: BoxDecoration(
                        color: const Color(0xff0336FF),
                        borderRadius: BorderRadius.circular(28)),
                    child: const Center(
                        child: Text(
                          "Rent Property",
                          style:
                          TextStyle(color: Colors.white, fontFamily: 'Poppins'),
                        ))))
          ],
        ));
  }
}
