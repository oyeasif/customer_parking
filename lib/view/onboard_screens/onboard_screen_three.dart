import 'package:animate_do/animate_do.dart';
import 'package:customer_parking_app/res/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../res/color.dart';
import '../../../res/my_imgs.dart';
import '../../../widgets/text_widget.dart';

class OnboardScreenThree extends StatefulWidget {
  const OnboardScreenThree({super.key});

  @override
  State<OnboardScreenThree> createState() => _OnboardScreenThreeState();
}

class _OnboardScreenThreeState extends State<OnboardScreenThree> {
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
                alignment: Alignment.bottomCenter,
                children: [
                  FadeInRight(
                    duration: const Duration(seconds: 2),
                    child: Padding(
                      padding: EdgeInsets.only(left: 100.w),
                      child: SvgPicture.asset(MyImgs.mobile3),
                    ),
                  ),
                  FadeInLeft(
                      duration: const Duration(seconds: 2),
                      child: SvgPicture.asset(MyImgs.car3)),
                ],
              ),
              FadeInUp(
                duration: const Duration(seconds: 2),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextStyleWidget(title: Strings.receiveParking.tr, size: 25.sp, weight: FontWeight.w700, color: MyColors.black10,),

                    TextStyleWidget(title: Strings.notification.tr, size: 25.sp, weight: FontWeight.w700, color: MyColors.primaryRed,),
                  ],
                ),
              ),
              FadeInUp(
                duration: const Duration(seconds: 2),
                child: TextStyleWidget(title: Strings.onboardTwoDes.tr,
                  size: 16.sp, weight: FontWeight.w400, color: MyColors.black, textAlign: TextAlign.center,),
              ),

            ],
          ),
        ),
      ],
    );
  }
}
