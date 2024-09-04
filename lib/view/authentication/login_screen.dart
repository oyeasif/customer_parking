import 'package:customer_parking_app/res/color.dart';
import 'package:customer_parking_app/res/my_imgs.dart';
import 'package:customer_parking_app/view/authentication/register_screen.dart';
import 'package:customer_parking_app/view/authentication/verification_screen.dart';
import 'package:customer_parking_app/view/navi_bar.dart';
import 'package:customer_parking_app/widgets/button_widget.dart';
import 'package:customer_parking_app/widgets/text_widget.dart';
import 'package:customer_parking_app/widgets/textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  bool obsecureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(15.sp),
        child: ListView(
          children: [
            SvgPicture.asset(MyImgs.loginPic),
            SizedBox(
              height: 10.h,
            ),
            TextStyleWidget(
              title: 'PARKILY',
              size: 28.sp,
              weight: FontWeight.w700,
              letterSpacing: 3,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 3.h,
            ),
            TextStyleWidget(
              title: 'Your smart parking companion',
              size: 14.sp,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10.h,
            ),
            TextStyleWidget(
              title: 'Login',
              size: 28.sp,
              weight: FontWeight.w700,
              color: MyColors.primaryOrange,
            ),
            SizedBox(
              height: 10.h,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                      height: 10.h,
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
                      obscureText: obsecureText ? true : false,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                obsecureText = !obsecureText;
                              });
                            },
                            icon: obsecureText
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
                              fontWeight: FontWeight.w600, color: Colors.grey),
                          filled: true,
                          fillColor: MyColors.textField,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.r),
                            borderSide: BorderSide.none,
                          )),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: TextStyleWidget(
                        title: 'Forgot Password?',
                        size: 13.sp,
                        textAlign: TextAlign.right,
                        underline: TextDecoration.underline,
                        color: MyColors.primaryOrange,
                        weight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    ButtonWidget(
                      loading: false,
                      title: 'Login',
                      onPress: () {
                        Get.to(()=> NaviBarScreen(currentindex: 0));
                      },
                      buttonColor: MyColors.primaryOrange,
                      textColor: Colors.white,
                    ),
                    SizedBox(
                      height: 10.h,
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
                            radius: 22.r,
                            backgroundColor: MyColors.primaryRed,
                            child: Center(
                                child: SvgPicture.asset(
                              MyImgs.google,
                              width: 25.w,
                              height: 25.h,
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
                            title: 'Don\'t have an account?', size: 14.sp),
                        TextButton(
                            onPressed: () {
                              Get.to(()=>const RegisterScreen());
                            },
                            child: TextStyleWidget(
                              title: 'Create now',
                              size: 14.sp,
                              color: MyColors.primaryOrange,
                              weight: FontWeight.w600,
                              underline: TextDecoration.underline,
                            ))
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
