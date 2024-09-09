import 'package:customer_parking_app/res/my_imgs.dart';
import 'package:customer_parking_app/view/home_screens/review_summary_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../res/color.dart';
import '../../widgets/button_widget.dart';
import '../../widgets/text_widget.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {

  int isSelected = 0;
  List<String> img = [MyImgs.easypaisa, MyImgs.jazzCash];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: TextStyleWidget(
            title: 'Payment',
            size: 14.sp,
            weight: FontWeight.w600,
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.all(20.sp),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20.h,
                    ),
                    TextStyleWidget(
                      title: 'Choose Payment Method',
                      size: 14.sp,
                      weight: FontWeight.w600,
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    ListView.builder(
                        shrinkWrap: true,
                        itemCount: img.length,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.only(bottom: 15.h),
                            child: GestureDetector(
                              onTap: (){
                                setState(() {
                                  isSelected = index;
                                });
                              },
                              child: Container(
                                height: 80.h,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10.r),
                                  border: isSelected == index ? Border.all(color: MyColors.primaryOrange) : Border(),
                                  boxShadow: [
                                    BoxShadow(
                                      color: MyColors.grey20,
                                      blurRadius: 5.r,
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 8.w),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Image(image: AssetImage(img[index])),
                                        Radio(
                                          value: index, // Set the index as the value
                                          groupValue: isSelected, // The selected value
                                          onChanged: (value) {
                                            setState(() {
                                              isSelected = value as int; // Update the selected value
                                            });
                                          },
                                          activeColor: MyColors.primaryOrange, // Color when selected
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        })
                  ],
                ),
              ),
              ButtonWidget(
                  loading: false,
                  title: 'Proceed',
                  onPress: () {
                    Get.to(()=>const ReviewSummaryScreen());
                  },
                  buttonColor: MyColors.primaryOrange,
                  textColor: Colors.white),
            ],
          ),
        ));
  }
}
