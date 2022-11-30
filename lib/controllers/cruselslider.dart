import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CarouselHome extends StatelessWidget {
  @override
  final List<String> imgList = [
    'assets/images/crouselone.jpg',
    'assets/images/crouseltwo.png',
    'assets/images/crouselthree.jpg',
    'assets/images/crouselfour.jpg',
    'assets/images/crouselfive.jpg',
    'assets/images/crouselsix.jpg',
    'assets/images/crouselseven.jpg',

  ];

  @override
  Widget build(BuildContext context) {
    return Container(height: 46.h, decoration: BoxDecoration(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(24),
        bottomRight: Radius.circular(24),),
      color: Colors.white,
    ),
      child: CarouselSlider(
        options:  CarouselOptions(
          autoPlay: true,
          enlargeCenterPage: true,
          viewportFraction: 1,
          aspectRatio: .98,
          initialPage: 5,
          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(milliseconds: 2000),
          autoPlayCurve: Curves.fastOutSlowIn,
         // enlargeCenterPage: true,
          scrollDirection: Axis.horizontal,
        ),
        items: imgList
            .map((item) => Center(
          child: Container(
            child:
            ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(24),
                  bottomRight: Radius.circular(24),),
                child: Image.asset(item, fit: BoxFit.cover, width: 1000,height: 60.h,)),),
        )).toList(),
      ),
    );
  }
}




