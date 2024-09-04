import 'package:animate_do/animate_do.dart';
import 'package:customer_parking_app/view/authentication/login_screen.dart';
import 'package:customer_parking_app/view/onboard_screens/onboard_screen_one.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../res/color.dart';
import '../../res/my_imgs.dart';
import '../../res/strings.dart';
import '../../widgets/text_widget.dart';
import 'onboard_screen_three.dart';
import 'onboard_screen_two.dart';

class OnboardScreen extends StatefulWidget {
  const OnboardScreen({super.key});

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  int currentIndex = 0;
  final PageController _pageController = PageController();

  List<Widget> screens = [
    const OnboardScreenOne(),
    const OnboardScreenTwo(),
    const OnboardScreenThree(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          TextButton(
            onPressed: () {
              Get.to(()=>const LoginScreen());
            },
            child: TextStyleWidget(
              title: Strings.skip.tr,
              size: 14.sp,
              weight: FontWeight.w500,
              color: MyColors.primaryRed,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(10.sp),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (int index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemCount: screens.length,
                itemBuilder: (context, index) {
                  return screens[index];
                },
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15.w, right: 15.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  currentIndex == 1 || currentIndex == 2
                      ? SizedBox(
                          width: 48.w,
                          height: 48.h,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                border: Border.all(
                                    color: MyColors.primaryRed,
                                    width: 2.w,
                                    strokeAlign: 2)),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.zero,
                                shadowColor: Colors.transparent,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.r),
                                ),
                              ),
                              onPressed: () {
                                if (currentIndex > 0) {
                                  _pageController.previousPage(
                                    duration: const Duration(milliseconds: 300),
                                    curve: Curves.easeInOut,
                                  );
                                }
                              },
                              child: SvgPicture.asset(
                                MyImgs.arrowLeft,
                                color: MyColors.primaryRed,
                              ),
                            ),
                          ),
                        )
                      : Container(),
                  FadeInUp(
                    duration: const Duration(seconds: 2),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(screens.length, (index) {
                          return Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Container(
                              width: currentIndex == index ? 30.w : 11.w,
                              height: 11.h,
                              decoration: BoxDecoration(
                                color: currentIndex == index
                                    ? MyColors.primaryRed
                                    : MyColors.redLight,
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                            ),
                          );
                        })),
                  ),
                  FadeInRight(
                    duration: const Duration(seconds: 2),
                    child: SizedBox(
                      width: 50.w,
                      height: 50.h,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          boxShadow: [
                            BoxShadow(
                              color: MyColors.primaryRed,
                              blurRadius: 8.r,
                            ),
                          ],
                        ),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.zero,
                            backgroundColor: MyColors
                                .primaryRed, // Use 'primary' for button's color
                            shadowColor: Colors.transparent,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                          ),
                          onPressed: () {
                            if (currentIndex < screens.length - 1) {
                              _pageController.nextPage(
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.easeInOut,
                              );
                            } else {
                              Get.to(()=>const LoginScreen());
                            }
                          },
                          child: SvgPicture.asset(
                            MyImgs.arrowRight,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
          ],
        ),
      ),
    );
  }
}
