import 'package:customer_parking_app/res/my_imgs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../res/color.dart';
import '../../widgets/button_widget.dart';
import '../../widgets/text_widget.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
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
                      size: 12.sp,
                      weight: FontWeight.w600,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Container(
                      height: 60.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.r),
                        border: Border.all(color: MyColors.primaryOrange),
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
                              Image(image: AssetImage(MyImgs.easypaisa)),
                              Radio(value: 1, groupValue: 1, onChanged: (value){},activeColor: MyColors.primaryOrange,)
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              ButtonWidget(
                  loading: false,
                  title: 'Proceed',
                  onPress: () {},
                  buttonColor: MyColors.primaryOrange,
                  textColor: Colors.white),
            ],
          ),
        )
    );
  }
}
