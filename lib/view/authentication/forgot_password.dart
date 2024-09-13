import 'package:animate_do/animate_do.dart';
import 'package:customer_parking_app/res/color.dart';
import 'package:customer_parking_app/res/my_imgs.dart';
import 'package:customer_parking_app/view/authentication/forgot_otp_screen.dart';
import 'package:customer_parking_app/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../widgets/text_widget.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextStyleWidget(
          title: 'Forgot Password',
          size: 20.sp,
          weight: FontWeight.w600,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(20.sp),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      FadeInRight(
                          duration: Duration(seconds: 2),
                          child: SvgPicture.asset(
                            MyImgs.forgotMobile,
                          )),
                      Padding(
                        padding: EdgeInsets.only(left: 30.w),
                        child: FadeInLeft(
                            duration: Duration(seconds: 2),
                            child: SvgPicture.asset(
                              MyImgs.forgotPic,
                            )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  TextStyleWidget(
                    title:
                        'Select which contact details should we use to reset your password',
                    size: 12.sp,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      radius: 30.r,
                      child: Center(
                        child: SvgPicture.asset(
                          MyImgs.forgotChat,
                        ),
                      ),
                    ),
                    title: TextStyleWidget(
                      title: 'via sms',
                      size: 12.sp,
                      color: MyColors.grey,
                    ),
                    subtitle: TextStyleWidget(
                      title: '+1 111 ******99',
                      size: 12.sp,
                      weight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      radius: 30.r,
                      child: Center(
                        child: SvgPicture.asset(
                          MyImgs.message,
                        ),
                      ),
                    ),
                    title: TextStyleWidget(
                      title: 'via Email',
                      size: 12.sp,
                      color: MyColors.grey,
                    ),
                    subtitle: TextStyleWidget(
                      title: 'and***ey@yourdomain.com',
                      size: 12.sp,
                      weight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            ButtonWidget(
              loading: false,
                title: 'Continue',
                onPress: (){
                Get.to(()=>const ForgotOtpScreen());
                },
                buttonColor: MyColors.primaryRed,
                textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
