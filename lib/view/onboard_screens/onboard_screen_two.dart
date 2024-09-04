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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(MyImgs.onboard2),
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
                        TextStyleWidget(title: Strings.reserve.tr, size: 25.sp, weight: FontWeight.w700, color: MyColors.black10,),
                        TextStyleWidget(title: Strings.yourSpot.tr, size: 25.sp, weight: FontWeight.w700, color: MyColors.primaryRed,),
                        TextStyleWidget(title: Strings.iin.tr, size: 25.sp, weight: FontWeight.w700, color: MyColors.black10,),
                      ],
                    ),
                    TextStyleWidget(title: Strings.advance.tr, size: 25.sp, weight: FontWeight.w700, color: MyColors.black10,),
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
