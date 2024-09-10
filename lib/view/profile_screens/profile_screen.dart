import 'package:customer_parking_app/res/color.dart';
import 'package:customer_parking_app/view/authentication/login_screen.dart';
import 'package:customer_parking_app/view/profile_screens/change_language_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../animation/scaletransition_animation.dart';
import '../../res/my_imgs.dart';
import '../../widgets/text_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool isDark = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextStyleWidget(
          title: 'Profile',
          size: 14.sp,
          weight: FontWeight.w600,
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          SizedBox(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 5.h,
                  ),
                  ScalesTransitionAnimation(
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(MyImgs.personProfile),
                          radius: 50,
                        ),
                        Container(
                          height: 25.h,
                          width: 25.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.r),
                            color: MyColors.primaryRed,
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.edit,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  ScalesTransitionAnimation(
                    child: Center(
                      child: TextStyleWidget(
                        title: 'Muhammad Musab',
                        size: 16.sp,
                        weight: FontWeight.w600,
                      ),
                    ),
                  ),
                  ScalesTransitionAnimation(
                    child: TextStyleWidget(
                      title: 'muhammadmusab302@gmail.com',
                      size: 12.sp,
                      weight: FontWeight.w500,
                      color: MyColors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: [
                const Divider(),
                SizedBox(
                  height: 10.h,
                ),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: SvgPicture.asset(MyImgs.editProfile),
                  title: TextStyleWidget(
                    title: 'Edit Profile',
                    size: 14.sp,
                    weight: FontWeight.w500,
                  ),
                ),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: SvgPicture.asset(MyImgs.payment),
                  title: TextStyleWidget(
                    title: 'Payment',
                    size: 14.sp,
                    weight: FontWeight.w500,
                  ),
                ),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: SvgPicture.asset(MyImgs.help),
                  title: TextStyleWidget(
                    title: 'Help',
                    size: 14.sp,
                    weight: FontWeight.w500,
                  ),
                ),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: SvgPicture.asset(MyImgs.notifications),
                  title: TextStyleWidget(
                    title: 'Notifications',
                    size: 14.sp,
                    weight: FontWeight.w500,
                  ),
                ),
                ListTile(
                  onTap: (){
                    setState(() {
                      isDark = !isDark;
                    });
                  },
                  contentPadding: EdgeInsets.zero,
                  leading: SvgPicture.asset(MyImgs.darkMode),
                  title: TextStyleWidget(
                    title: 'Dark Mode',
                    size: 14.sp,
                    weight: FontWeight.w500,
                  ),
                  trailing: Switch(
                    activeColor: MyColors.primaryRed,
                    value: isDark,
                    onChanged: (value) {

                    },
                  ),
                ),
                ListTile(
                  onTap: (){
                    Get.to(()=> const ChangeLanguageScreen());
                  },
                  contentPadding: EdgeInsets.zero,
                  leading: SvgPicture.asset(MyImgs.language),
                  title: TextStyleWidget(
                    title: 'Change Language',
                    size: 14.sp,
                    weight: FontWeight.w500,
                  ),
                ),
                ListTile(
                  onTap: (){
                    Get.to(()=>const LoginScreen());
                  },
                  contentPadding: EdgeInsets.zero,
                  leading: SvgPicture.asset(MyImgs.logOut),
                  title: TextStyleWidget(
                    title: 'Logout',
                    size: 14.sp,
                    weight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
    ;
  }
}
