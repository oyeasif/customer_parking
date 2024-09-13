import 'package:customer_parking_app/view/authentication/reset_password_screen.dart';
import 'package:customer_parking_app/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../res/color.dart';
import '../../widgets/button_widget.dart';

class ForgotOtpScreen extends StatefulWidget {
  const ForgotOtpScreen({super.key});

  @override
  State<ForgotOtpScreen> createState() => _ForgotOtpScreenState();
}

class _ForgotOtpScreenState extends State<ForgotOtpScreen> {

  TextEditingController pinCodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(30.sp),
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextStyleWidget(title: 'Code has been send to +1 111***99', size: 12.sp,),
                  SizedBox(height: 50.h,),
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
                  SizedBox(height: 50.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextStyleWidget(title: 'Resend code in ', size: 12.sp,),
                      TextStyleWidget(title: '59', size: 12.sp, color: MyColors.primaryRed,),
                      TextStyleWidget(title: ' sec', size: 12.sp,),
                    ],
                  ),
                ],),
            ),
            ButtonWidget(
              loading: false,
              title: 'Verify',
              onPress: () {
                Get.to(()=> const ResetPasswordScreen());
              },
              buttonColor: pinCodeController.value.text.length < 4 ? MyColors.redLight : MyColors.primaryRed,
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
