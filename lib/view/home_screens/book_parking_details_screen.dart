import 'package:customer_parking_app/res/color.dart';
import 'package:customer_parking_app/view/home_screens/payment_screen.dart';
import 'package:customer_parking_app/widgets/button_widget.dart';
import 'package:customer_parking_app/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class BookParkingDetailsScreen extends StatefulWidget {
  const BookParkingDetailsScreen({super.key});

  @override
  State<BookParkingDetailsScreen> createState() =>
      _BookParkingDetailsScreenState();
}

class _BookParkingDetailsScreenState extends State<BookParkingDetailsScreen> {

  int sliderValue = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextStyleWidget(
          title: 'Book Parking Details',
          size: 14.sp,
          weight: FontWeight.w600,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(20.sp),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20.h,
                    ),
                    TextStyleWidget(
                      title: 'Select Date',
                      size: 12.sp,
                      weight: FontWeight.w600,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: MyColors.grey40,
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: Theme(
                        data: ThemeData(
                          colorScheme: ColorScheme.light(
                            primary: MyColors.primaryOrange, // Sets the primary color to orange
                          ),
                        ),
                        child: CalendarDatePicker(
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2010),
                          lastDate: DateTime(2050),
                          onDateChanged: (value) {},
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    TextStyleWidget(
                      title: 'Duration',
                      size: 12.sp,
                      weight: FontWeight.w600,
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    Slider(
                      activeColor: MyColors.primaryRed,
                      thumbColor: Colors.white,
                      min: 1,
                      max: 24,
                      value: sliderValue.toDouble(),
                      label: sliderValue.toStringAsFixed(1),
                      divisions: 100,
                      onChanged: (value){
                        setState(() {
                          sliderValue = value.toInt();
                          print(value.toString());
                        });
                      },
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextStyleWidget(
                            title: 'Start Hour',
                            size: 12.sp,
                            weight: FontWeight.w600,
                          ),
                          TextStyleWidget(
                            title: 'End Hour',
                            size: 12.sp,
                            weight: FontWeight.w600,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 56.h,
                          width: 130.w,
                          decoration: BoxDecoration(
                            color: MyColors.grey50,
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: Center(
                              child: TextStyleWidget(
                            title: '10:00 AM',
                            size: 10.sp,
                            weight: FontWeight.w500,
                          )),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          size: 20.sp,
                        ),
                        Container(
                          height: 56.h,
                          width: 130.w,
                          decoration: BoxDecoration(
                            color: MyColors.grey50,
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: Center(
                              child: TextStyleWidget(
                            title: '12:00 PM',
                            size: 10.sp,
                            weight: FontWeight.w500,
                          )),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    TextStyleWidget(
                      title: 'Total',
                      size: 12.sp,
                      weight: FontWeight.w600,
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    TextStyleWidget(
                      title: '${sliderValue * 50}',
                      size: 14.sp,
                      weight: FontWeight.w600,
                      color: MyColors.primaryRed,
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                  ],
                ),
              ),
            ),
            ButtonWidget(
                loading: false,
                title: 'Proceed',
                onPress: () {
                  Get.to(()=>const PaymentScreen());
                },
                buttonColor: MyColors.primaryOrange,
                textColor: Colors.white),
          ],
        ),
      ),
    );
  }
}
