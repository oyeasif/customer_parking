import 'package:customer_parking_app/res/color.dart';
import 'package:customer_parking_app/res/my_imgs.dart';
import 'package:customer_parking_app/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InvoiceScreen extends StatefulWidget {
  const InvoiceScreen({super.key});

  @override
  State<InvoiceScreen> createState() => _InvoiceScreenState();
}

class _InvoiceScreenState extends State<InvoiceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primaryRed,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.r),
              color: Colors.white,
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextStyleWidget(title: 'XCFGSAVBNM', size: 14.sp, weight: FontWeight.w600,),
                  Image(image: AssetImage(MyImgs.barCode),),
                  TextStyleWidget(title: '_____________________', size: 14.sp, weight: FontWeight.w600,),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextStyleWidget(title: 'Name', size: 12.sp, color: MyColors.grey, weight: FontWeight.w500,),
                              TextStyleWidget(title: 'Muhammad Musab', size: 12.sp, weight: FontWeight.w500,),
                              SizedBox(height: 10.h,),
                              TextStyleWidget(title: 'Parking Area', size: 12.sp, color: MyColors.grey, weight: FontWeight.w500,),
                              TextStyleWidget(title: 'Saddar', size: 12.sp, weight: FontWeight.w500,),
                              SizedBox(height: 10.h,),
                              TextStyleWidget(title: 'Duration', size: 12.sp, color: MyColors.grey, weight: FontWeight.w500,),
                              TextStyleWidget(title: '4 Hours', size: 12.sp, weight: FontWeight.w500,),
                              SizedBox(height: 10.h,),
                              TextStyleWidget(title: 'Hours', size: 12.sp, color: MyColors.grey, weight: FontWeight.w500,),
                              TextStyleWidget(title: '10 Am - 02 Pm', size: 12.sp, weight: FontWeight.w500,),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextStyleWidget(title: 'Vehicle', size: 12.sp, color: MyColors.grey, weight: FontWeight.w500,),
                              TextStyleWidget(title: 'Suzuki Cultus (LCX - 328)', size: 12.sp, weight: FontWeight.w500,),
                              SizedBox(height: 10.h,),
                              TextStyleWidget(title: 'Date', size: 12.sp, color: MyColors.grey, weight: FontWeight.w500,),
                              TextStyleWidget(title: 'August 19, 2024', size: 12.sp, weight: FontWeight.w500,),
                              SizedBox(height: 10.h,),
                              TextStyleWidget(title: 'Phone', size: 12.sp, color: MyColors.grey, weight: FontWeight.w500,),
                              TextStyleWidget(title: '03001234567', size: 12.sp, weight: FontWeight.w500,),
                              SizedBox(height: 10.h,),
                              TextStyleWidget(title: 'Fee Status', size: 12.sp, color: MyColors.grey, weight: FontWeight.w500,),
                              TextStyleWidget(title: 'Paid', size: 12.sp, weight: FontWeight.w500,),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
