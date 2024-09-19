import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../res/color.dart';
import '../../res/my_imgs.dart';
import '../../widgets/button_widget.dart';
import '../../widgets/text_widget.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {

  bool buttons = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextStyleWidget(
          title: 'Notifications',
          size: 14.sp,
          weight: FontWeight.w600,
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        shrinkWrap: true,
          itemCount: 1,
          itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(15.sp),
            child: GestureDetector(
              onTap: (){
                setState(() {
                  buttons = !buttons;
                });
              },
              child: Container(
                padding: EdgeInsets.all(10.sp),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(color: MyColors.primaryRed, width: 1.w,),
                  boxShadow: [
                    BoxShadow(
                      color: MyColors.grey20,
                      blurRadius: 5.r,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image(
                          image: AssetImage(MyImgs.building),
                          width: 90.w,
                          height: 90.h,
                        ),
                        SizedBox(width: 5.w,),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextStyleWidget(title: 'Sheikh Yaseen Tower', size: 14.sp, weight: FontWeight.w600,),
                              TextStyleWidget(title: 'Saddar Peshawar', size: 12.sp,),
                              SizedBox(height: 20.h,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  TextStyleWidget(title: 'Booking Time Expired', size: 10.sp,),
                                  TextStyleWidget(title: 'Today: 12:30 PM', size: 10.sp, weight: FontWeight.w500,),
                                ],
                              ),
                              TextStyleWidget(title: 'Booking ID: 12345', size: 12.sp,color: MyColors.grey,),
                            ],
                          ),
                        ),
                      ],
                    ),
                    if(buttons)Column(
                      children: [
                        SizedBox(
                          height: 10.h,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30.w),
                          child: ButtonWidget(
                            loading: false,
                            title: 'Snooze',
                            onPress: () {},
                            buttonColor: MyColors.redLight,
                            textColor: MyColors.primaryRed,
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30.w),
                          child: ButtonWidget(
                            loading: false,
                            title: 'Dismiss',
                            onPress: () {},
                            buttonColor: MyColors.redLight,
                            textColor: MyColors.primaryRed,
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30.w),
                          child: ButtonWidget(
                            loading: false,
                            title: 'Clear All',
                            onPress: () {},
                            buttonColor: MyColors.primaryRed,
                            textColor: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
          }),
    );
  }
}
