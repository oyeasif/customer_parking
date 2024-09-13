import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../res/color.dart';
import '../../widgets/text_widget.dart';

class TermsAndConditions extends StatefulWidget {
  const TermsAndConditions({super.key});

  @override
  State<TermsAndConditions> createState() => _TermsAndConditionsState();
}

class _TermsAndConditionsState extends State<TermsAndConditions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextStyleWidget(title: 'Terms & Conditions', size: 20.sp, weight: FontWeight.w600, color: MyColors.primaryRed,),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(15.sp),
        child: ListView(
          children: [
            TextStyleWidget(title: '1. By using our parking app, you agree to abide by these terms and conditions. If you do not accept these terms, please discontinue using the app.', size: 12.sp,),
            SizedBox(height: 10.h,),
            TextStyleWidget(title: '2. Users must register and create an account to access parking services. You are responsible for maintaining the confidentiality of your account details and ensuring that all information provided is accurate.', size: 12.sp,),
            SizedBox(height: 10.h,),
            TextStyleWidget(title: '3. Users can reserve parking spaces through the app. Reservations are subject to availability, and the app does not guarantee a parking spot unless confirmed through a booking.', size: 12.sp,),
            SizedBox(height: 10.h,),
            TextStyleWidget(title: '4. All payments must be made through the app using approved payment methods. Prices may vary based on location and time. Refunds are subject to our cancellation policy and are not guaranteed.', size: 12.sp,),
            SizedBox(height: 10.h,),
            TextStyleWidget(title: '5. Users must comply with all applicable parking rules, regulations, and signage when using reserved spots. Unauthorized parking, double parking, or violating parking lot rules may result in penalties or termination of your account.', size: 12.sp,),
            SizedBox(height: 10.h,),
            TextStyleWidget(title: '6. The app is not responsible for any loss, damage, theft, or injury that occurs while using the parking services. Users park at their own risk, and the app disclaims all liability related to the use of parking facilities.', size: 12.sp,),
            SizedBox(height: 10.h,),
            TextStyleWidget(title: '7. We collect and store user information as outlined in our Privacy Policy. By using the app, you consent to the collection and use of your data in accordance with these policies.', size: 12.sp,),
            SizedBox(height: 10.h,),
          ],
        ),
      ),
    );
  }
}
