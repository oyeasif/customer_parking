import 'package:animate_do/animate_do.dart';
import 'package:customer_parking_app/res/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../res/color.dart';
import '../../../res/my_imgs.dart';
import '../../../widgets/text_widget.dart';

class OnboardScreenTwo extends StatefulWidget {
  const OnboardScreenTwo({super.key});

  @override
  State<OnboardScreenTwo> createState() => _OnboardScreenTwoState();
}

class _OnboardScreenTwoState extends State<OnboardScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  FadeInLeft(
                  duration: Duration(seconds: 2),
                  child: SvgPicture.asset(MyImgs.onboardMobile2, width: 150.w, height: 300.h,)),
                  Padding(
                    padding: EdgeInsets.only(left: 150.w, top: 50.h),
                    child: FadeInRight(
                        duration: Duration(seconds: 2),
                        child: SvgPicture.asset(MyImgs.onboardPerson2, width: 130.w, height: 210.h,)),
                  ),
                ],
              ),
              FadeInUp(
                duration: const Duration(seconds: 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextStyleWidget(title: Strings.reserve.tr, size: 20.sp, weight: FontWeight.w700, color: MyColors.black10,),
                    TextStyleWidget(title: Strings.booking.tr, size: 20.sp, weight: FontWeight.w700, color: MyColors.primaryRed,),
                  ],
                ),
              ),
              FadeInUp(
                duration: const Duration(seconds: 2),
                child: TextStyleWidget(title: Strings.onboardTwoDes.tr,
                  size: 14.sp, weight: FontWeight.w400, color: MyColors.black, textAlign: TextAlign.center,),
              ),

            ],
          ),
        ),
      ],
    );
  }
}
