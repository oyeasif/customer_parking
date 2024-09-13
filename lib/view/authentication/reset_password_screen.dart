import 'package:animate_do/animate_do.dart';
import 'package:customer_parking_app/view/authentication/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../res/color.dart';
import '../../res/my_imgs.dart';
import '../../widgets/button_widget.dart';
import '../../widgets/text_widget.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {

  bool passObsecureText = true;
  bool newPassObsecureText = true;
  bool isRemember = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextStyleWidget(
          title: 'Reset Password',
          size: 20.sp,
          weight: FontWeight.w600,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 20.h,),
        child: SingleChildScrollView(
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
                height: 20.h,
              ),
              TextStyleWidget(
                title: 'Create your new password',
                size: 12.sp,
              ),
              SizedBox(
                height: 15.h,
              ),
              TextFormField(
                style: GoogleFonts.inter(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                ),
                obscuringCharacter: '*',
                validator: (value) {},
                obscureText: passObsecureText ? true : false,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          passObsecureText = !passObsecureText;
                        });
                      },
                      icon: passObsecureText
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
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
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
              TextFormField(
                style: GoogleFonts.inter(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                ),
                obscuringCharacter: '*',
                validator: (value) {},
                obscureText: passObsecureText ? true : false,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          passObsecureText = !passObsecureText;
                        });
                      },
                      icon: passObsecureText
                          ? const Icon(
                              Icons.visibility,
                              color: MyColors.primaryRed,
                            )
                          : const Icon(
                              Icons.visibility_off,
                              color: MyColors.primaryRed,
                            ),
                    ),
                    hintText: 'Confirm Password',
                    hintStyle: GoogleFonts.inter(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                    ),
                    filled: true,
                    fillColor: MyColors.textField,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: BorderSide.none,
                    )),
              ),
              Row(
                children: [
                  Checkbox(
                    value: isRemember,
                    onChanged: (value) {
                      setState(() {
                        isRemember = !isRemember;
                      });
                    },
                    activeColor: MyColors.primaryRed,
                  ),
                  TextStyleWidget(title: 'Remember me', size: 12.sp, weight: FontWeight.w500,),
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              ButtonWidget(
                loading: false,
                title: 'Continue',
                onPress: () {
                  Get.to(() => const LoginScreen());
                },
                buttonColor: MyColors.primaryRed,
                textColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
