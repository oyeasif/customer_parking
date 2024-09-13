import 'package:animate_do/animate_do.dart';
import 'package:customer_parking_app/res/my_imgs.dart';
import 'package:customer_parking_app/res/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../res/color.dart';
import '../../../widgets/text_widget.dart';

class OnboardScreenOne extends StatefulWidget {
  const OnboardScreenOne({super.key});

  @override
  State<OnboardScreenOne> createState() => _OnboardScreenOneState();
}

class _OnboardScreenOneState extends State<OnboardScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  FadeInLeft(
                      duration: const Duration(seconds: 2),
                      child: Padding(
                        padding: EdgeInsets.only(left: 40.w),
                        child: SvgPicture.asset(MyImgs.mobile1),
                      )),
                  FadeInRight(
                      duration: const Duration(seconds: 2),
                      child: SvgPicture.asset(MyImgs.carPerson)),
                ],
              ),
              FadeInUp(
                duration: const Duration(seconds: 2),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextStyleWidget(title: Strings.onSpot.tr, size: 20.sp, weight: FontWeight.w700, color: MyColors.black10,),
                        TextStyleWidget(title: Strings.parking.tr, size: 20.sp, weight: FontWeight.w700, color: MyColors.primaryRed,),
                      ],
                    ),
                    TextStyleWidget(title: Strings.availability.tr, size: 20.sp, weight: FontWeight.w700, color: MyColors.black10,),
                  ],
                ),
              ),
              FadeInUp(
                duration: const Duration(seconds: 2),
                child: TextStyleWidget(title: Strings.onboardOneDes.tr,
                  size: 16.sp, weight: FontWeight.normal, color: MyColors.black, textAlign: TextAlign.center,),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
