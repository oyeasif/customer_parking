import 'package:customer_parking_app/res/my_imgs.dart';
import 'package:customer_parking_app/view/navi_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../res/color.dart';
import '../../widgets/button_widget.dart';
import '../../widgets/text_widget.dart';
import 'login_screen.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {

  TextEditingController pinCodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 25.w, right: 25.w, top: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20.h,),
              Align(
                  alignment: Alignment.topCenter,
                  child: SvgPicture.asset(MyImgs.verification)),
              SizedBox(height: 15.h,),
              TextStyleWidget(
                title:
                'Verification Code',
                size: 22.sp,
                weight: FontWeight.bold,
                color: MyColors.black,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 15.h,),
              TextStyleWidget(
                title:
                'We have sent the verification code to your email address',
                size: 14.sp,
                weight: FontWeight.normal,
                color: MyColors.grey,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20.h,),
              PinCodeTextField(
                controller: pinCodeController,
                length: 4,
                pastedTextStyle: TextStyle(
                  color: Colors.green.shade600,
                  fontWeight: FontWeight.bold,
                ),
                validator: (v) {
                  if (v!.length < 4) {
                    return "not correct";
                  } else {
                    return null;
                  }
                },
                obscureText: false,
                animationType: AnimationType.fade,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(20.r),
                  fieldHeight: 65.h,
                  fieldWidth: 65.w,
                  activeColor: MyColors.primaryRed,
                  activeFillColor: MyColors.primaryRed,
                  selectedFillColor: MyColors.redLight,
                  selectedColor: MyColors.redLight,
                  inactiveFillColor: MyColors.primaryRed,
                  inactiveColor: MyColors.grey10,
                  activeBorderWidth: 2.w,
                  inactiveBorderWidth: 2.w,
                  selectedBorderWidth: 2.w,
                ),
                cursorColor: Colors.black,
                textStyle: TextStyle(fontSize: 20.sp, height: 1.6.h),
                keyboardType: TextInputType.phone,
                onCompleted: (v) {
                  print("Completed");
                  // setState(() {
                  //   codeCompleted = !codeCompleted;
                  // });
                },
                animationDuration: const Duration(milliseconds: 300),
                onChanged: (value) {
                  setState(() {
                    // Handle onChanged if needed
                  });
                },
                appContext: context,
              ),
              TextStyleWidget(
                  title: 'Did\'nt receive the OTP?', size: 14.sp,
              ),
              TextStyleWidget(
                title: 'Resend Code',
                size: 14.sp,
                color: MyColors.primaryOrange,
                weight: FontWeight.w600,
                underline: TextDecoration.underline,
              ),
              SizedBox(
                height: 20.h,
              ),
              ButtonWidget(
                loading: false,
                title: 'Verify',
                onPress: () {
                  Get.to(()=> NaviBarScreen(currentindex: 0));
                },
                buttonColor: pinCodeController.value.text.length < 4 ? MyColors.redLight : MyColors.primaryRed,
                textColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
