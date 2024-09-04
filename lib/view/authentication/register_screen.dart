import 'package:customer_parking_app/res/my_imgs.dart';
import 'package:customer_parking_app/view/authentication/login_screen.dart';
import 'package:customer_parking_app/view/authentication/verification_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import '../../res/color.dart';
import '../../widgets/button_widget.dart';
import '../../widgets/text_widget.dart';
import '../../widgets/textfield_widget.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  bool visiblePassword = false;
  bool checkBox = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 15.w, right: 15.w, top: 40.h),
        child: ListView(
          children: [
            TextStyleWidget(
              title: 'Create Account',
              size: 28.sp,
              weight: FontWeight.w600,
              color: MyColors.primaryOrange,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: TextStyleWidget(
                title:
                    'Fill below your information below or register with your social account',
                size: 14.sp,
                weight: FontWeight.normal,
                color: MyColors.grey,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: TextStyleWidget(
                title: 'Name',
                size: 14.sp,
                weight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            const TextfieldWidget(
              hintText: 'Enter Name',
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: TextStyleWidget(
                title: 'Email',
                size: 14.sp,
                weight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            const TextfieldWidget(
              hintText: 'Enter Email',
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: TextStyleWidget(
                title: 'Phone',
                size: 14.sp,
                weight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Container(
              padding: EdgeInsets.only(left: 8.w, top: 2.h, bottom: 2.h),
              decoration: BoxDecoration(
                color: MyColors.textField,
                borderRadius: BorderRadius.circular(10.r)
              ),
              child: InternationalPhoneNumberInput(
                textStyle: GoogleFonts.inter(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                ),
                textFieldController: TextEditingController(),
                onInputChanged: (PhoneNumber number) {},
                onInputValidated: (bool value) {},
                selectorConfig: const SelectorConfig(
                  selectorType: PhoneInputSelectorType.DIALOG,
                ), // Changed selectorType to BOTTOM_SHEET
                ignoreBlank: false,
                autoValidateMode: AutovalidateMode.disabled,
                selectorTextStyle: const TextStyle(color: Colors.black),
                initialValue: PhoneNumber(isoCode: 'PK'),
                formatInput: false,
                keyboardType: const TextInputType.numberWithOptions(
                    signed: true, decimal: true),
                inputBorder: const OutlineInputBorder(),
                onSaved: (PhoneNumber number) {},
                inputDecoration: InputDecoration(
                  hintText: 'Enter Phone',
                  hintStyle: GoogleFonts.inter(
                      fontWeight: FontWeight.w600, color: Colors.grey,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: MyColors.textField,
                  border: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: TextStyleWidget(
                title: 'Password',
                size: 14.sp,
                weight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            TextFormField(
              style: GoogleFonts.inter(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
              obscuringCharacter: '*',
              validator: (value) {},
              obscureText: visiblePassword ? true : false,
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        visiblePassword = !visiblePassword;
                      });
                    },
                    icon: visiblePassword
                        ? const Icon(
                            Icons.visibility,
                            color: MyColors.primaryRed,
                          )
                        : const Icon(
                            Icons.visibility_off,
                            color: MyColors.primaryRed,
                          ),
                  ),
                  hintText: 'Password',
                  hintStyle: GoogleFonts.inter(
                      fontWeight: FontWeight.w600, color: Colors.grey
                  ),
                  filled: true,
                  fillColor: MyColors.textField,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: BorderSide.none,
                  )),
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Checkbox(
                  activeColor: MyColors.primaryRed,
                  value: checkBox,
                  onChanged: (value) {
                    setState(() {
                      checkBox = !checkBox;
                    });
                  },
                ),
                TextStyleWidget(title: 'Agree with', size: 14.sp),
                TextButton(
                    onPressed: () {},
                    child: TextStyleWidget(
                      title: 'Terms \& Condition',
                      size: 14.sp,
                      color: MyColors.primaryRed,
                      weight: FontWeight.w600,
                      underline: TextDecoration.underline,
                    ))
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            ButtonWidget(
              loading: false,
              title: 'Sign up',
              onPress: () {
                Get.to(()=>const VerificationScreen());
              },
              buttonColor: MyColors.primaryOrange,
              textColor: Colors.white,
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(MyImgs.line),
                TextStyleWidget(title: 'Or sign up with', size: 14.sp, color: MyColors.grey,),
                SvgPicture.asset(MyImgs.line),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  MyImgs.facebook,
                  width: 50.w,
                  height: 50.h,
                ),
                SizedBox(
                  width: 15.w,
                ),
                SvgPicture.asset(
                  MyImgs.twitter,
                  width: 50.w,
                  height: 50.h,
                ),
                SizedBox(
                  width: 15.w,
                ),
                CircleAvatar(
                    radius: 21.r,
                    backgroundColor: MyColors.primaryRed,
                    child: Center(
                        child: SvgPicture.asset(
                          MyImgs.google,
                          width: 25,
                          height: 25,
                          color: Colors.white,
                        ))),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextStyleWidget(
                    title: 'Already an account?', size: 14.sp),
                TextButton(
                    onPressed: () {
                      Get.to(()=>const LoginScreen());
                    },
                    child: TextStyleWidget(
                      title: 'Login in',
                      size: 14.sp,
                      color: MyColors.primaryOrange,
                      weight: FontWeight.w600,
                      underline: TextDecoration.underline,
                    ),
                ),
              ],
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
