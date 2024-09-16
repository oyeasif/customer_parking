import 'package:customer_parking_app/res/color.dart';
import 'package:customer_parking_app/res/my_imgs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/text_widget.dart';

class ReferFriendScreen extends StatefulWidget {
  const ReferFriendScreen({super.key});

  @override
  State<ReferFriendScreen> createState() => _ReferFriendScreenState();
}

class _ReferFriendScreenState extends State<ReferFriendScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextStyleWidget(
          title: 'Refer to friend',
          size: 14.sp,
          weight: FontWeight.w600,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 20.w, right: 20.w),
        child: Column(
          children: [
            SvgPicture.asset(MyImgs.referFriendPic),
            SizedBox(height: 20.h,),
            TextStyleWidget(title: 'Share your referal link to your friend', size: 10.sp, color: MyColors.grey,),
            SizedBox(height: 40.h,),
            SizedBox(
              width: double.infinity,
              height: 50.h,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: 1.0.h), // Adjust padding as needed
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    border: Border.all(color: MyColors.primaryRed),
                    boxShadow: [
                      BoxShadow(
                        color: MyColors.grey20,
                        blurRadius: 5.r,
                      ),
                    ],
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white, // Use 'primary' for button's color
                      shadowColor: Colors.transparent,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.r),
                        side: BorderSide(color: MyColors.primaryRed)
                      ),
                    ),
                    onPressed: (){},
                    child: Row(
                      children: [
                        SvgPicture.asset(MyImgs.copyRefer),
                        SizedBox(width: 50.w,),
                        Text(
                          'parkily/sdfsukafkhdaerf',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inter(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            height: 0.12.h,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
