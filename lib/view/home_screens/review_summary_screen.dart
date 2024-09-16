import 'package:customer_parking_app/res/color.dart';
import 'package:customer_parking_app/res/my_imgs.dart';
import 'package:customer_parking_app/view/home_screens/invoice_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../widgets/button_widget.dart';
import '../../widgets/text_widget.dart';

class ReviewSummaryScreen extends StatefulWidget {
  const ReviewSummaryScreen({super.key});

  @override
  State<ReviewSummaryScreen> createState() => _ReviewSummaryScreenState();
}

class _ReviewSummaryScreenState extends State<ReviewSummaryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextStyleWidget(
          title: 'Review Summary',
          size: 14.sp,
          weight: FontWeight.w600,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(15.sp),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.all(15.sp),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          border: Border.all(color: MyColors.primaryRed, width: 2.w)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextStyleWidget(
                                  title: 'Address',
                                  size: 12.sp,
                                  color: MyColors.grey,
                                  weight: FontWeight.w600),
                              TextStyleWidget(
                                  title: 'Sheikh Yaseen Center',
                                  size: 12.sp,
                                  weight: FontWeight.w600),
                            ],
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextStyleWidget(
                                  title: 'Vehicle',
                                  size: 12.sp,
                                  color: MyColors.grey,
                                  weight: FontWeight.w600),
                              TextStyleWidget(
                                  title: 'Suzuki Cultus (LCX - 328)',
                                  size: 12.sp,
                                  weight: FontWeight.w600),
                            ],
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextStyleWidget(
                                  title: 'Date',
                                  size: 12.sp,
                                  color: MyColors.grey,
                                  weight: FontWeight.w600),
                              TextStyleWidget(
                                  title: 'August 19, 2024 ',
                                  size: 12.sp,
                                  weight: FontWeight.w600),
                            ],
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextStyleWidget(
                                  title: 'Duration',
                                  size: 12.sp,
                                  color: MyColors.grey,
                                  weight: FontWeight.w600),
                              TextStyleWidget(
                                  title: '4 Hours',
                                  size: 12.sp,
                                  weight: FontWeight.w600),
                            ],
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextStyleWidget(
                                  title: 'Hours',
                                  size: 12.sp,
                                  color: MyColors.grey,
                                  weight: FontWeight.w600),
                              TextStyleWidget(
                                  title: '10:00 AM - 02:00PM',
                                  size: 12.sp,
                                  weight: FontWeight.w600),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Container(
                      padding: EdgeInsets.all(15.sp),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          border: Border.all(color: MyColors.primaryRed, width: 2.w)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextStyleWidget(
                                  title: 'Total Per Hours',
                                  size: 12.sp,
                                  color: MyColors.grey,
                                  weight: FontWeight.w600),
                              TextStyleWidget(
                                  title: 'Rs. 200',
                                  size: 12.sp,
                                  weight: FontWeight.w600),
                            ],
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextStyleWidget(
                                  title: 'Taxes & Fees (10%)',
                                  size: 12.sp,
                                  color: MyColors.grey,
                                  weight: FontWeight.w600),
                              TextStyleWidget(
                                  title: 'Rs. 50',
                                  size: 12.sp,
                                  weight: FontWeight.w600),
                            ],
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Divider(),
                          SizedBox(
                            height: 20.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextStyleWidget(
                                  title: 'Total',
                                  size: 12.sp,
                                  color: MyColors.grey,
                                  weight: FontWeight.w600),
                              TextStyleWidget(
                                  title: 'Rs. 250',
                                  size: 12.sp,
                                  weight: FontWeight.w600),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Container(
                      height: 80.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        border: Border.all(color: MyColors.primaryOrange, width: 2.w),
                      ),
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image(image: AssetImage(MyImgs.easypaisa)),
                              TextButton(
                                  onPressed: () {},
                                  child: TextStyleWidget(
                                    title: 'Change',
                                    size: 12.sp,
                                    weight: FontWeight.w600,
                                    color: MyColors.primaryRed,
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                  ],
                ),
              ),
            ),
            ButtonWidget(
                loading: false,
                title: 'Proceed',
                onPress: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context){
                        return Dialog(
                          insetPadding: EdgeInsets.all(40.sp),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.r),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 0.h),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image(image: AssetImage(MyImgs.successPay)),
                                TextStyleWidget(title: 'Successful', size: 22.sp, weight: FontWeight.w600, color: MyColors.primaryRed,),
                                SizedBox(height: 10.h,),
                                TextStyleWidget(title: 'Successfully made payment for your parking', size: 12.sp, weight: FontWeight.w500, textAlign: TextAlign.center,),
                                SizedBox(height: 30.h,),
                                ButtonWidget(
                                    loading: false,
                                    title: 'View Parking Ticket',
                                    onPress: () {
                                      Get.to(()=>const InvoiceScreen());
                                    },
                                    buttonColor: MyColors.primaryOrange,
                                    textColor: Colors.white),
                                SizedBox(height: 20.h,),
                                ButtonWidget(
                                    loading: false,
                                    title: 'Cancel',
                                    onPress: () {
                                      Get.back();
                                    },
                                    buttonColor: MyColors.redLight,
                                    textColor: MyColors.primaryRed),

                              ],
                            ),
                          ),
                        );
                      });
                },
                buttonColor: MyColors.primaryOrange,
                textColor: Colors.white),
          ],
        ),
      ),
    );
  }
}
