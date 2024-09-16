import 'package:customer_parking_app/res/my_imgs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../res/color.dart';
import '../../widgets/text_widget.dart';

class BookingsScreen extends StatefulWidget {
  const BookingsScreen({super.key});

  @override
  State<BookingsScreen> createState() => _BookingsScreenState();
}

class _BookingsScreenState extends State<BookingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextStyleWidget(
          title: 'My Bookings',
          size: 14.sp,
          weight: FontWeight.w600,
        ),
        centerTitle: true,
      ),
      body: DefaultTabController(
          length: 2,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 100.h,
                    width: 120.w,
                    padding: EdgeInsets.only(
                      right: 20.w,
                      bottom: 10.h,
                    ),
                    decoration: BoxDecoration(
                      color: MyColors.redLight,
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset(MyImgs.totalSessions),
                        SizedBox(
                          height: 5.h,
                        ),
                        TextStyleWidget(
                          title: '  Total Session',
                          size: 12.sp,
                          color: MyColors.grey20,
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        TextStyleWidget(
                          title: '   1',
                          size: 14.sp,
                          weight: FontWeight.w600,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Container(
                    height: 100.h,
                    width: 120.w,
                    padding: EdgeInsets.only(
                        right: 25.w, bottom: 10.h, top: 6.h, left: 5.w),
                    decoration: BoxDecoration(
                      color: MyColors.redLight,
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset(MyImgs.totalSpend),
                        SizedBox(
                          height: 5.h,
                        ),
                        TextStyleWidget(
                          title: 'Total Spend',
                          size: 12.sp,
                          color: MyColors.grey20,
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        TextStyleWidget(
                          title: 'Rs. 250',
                          size: 14.sp,
                          weight: FontWeight.w600,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              TabBar(
                  dividerColor: Colors.transparent,
                  indicatorColor: MyColors.primaryOrange,
                  labelColor: MyColors.primaryOrange,
                  labelPadding: EdgeInsets.all(10.sp),
                  tabs: [
                    TextStyleWidget(
                      title: 'Active',
                      size: 14.sp,
                      weight: FontWeight.w500,
                    ),
                    TextStyleWidget(
                      title: 'Completed',
                      size: 14.sp,
                      weight: FontWeight.w500,
                    ),
                  ]),
              Expanded(
                child: TabBarView(children: [
                  Padding(
                    padding: EdgeInsets.all(15.sp),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextStyleWidget(
                          title: 'Booking History',
                          size: 12.sp,
                          weight: FontWeight.w500,
                          color: MyColors.grey,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                          padding: EdgeInsets.all(10.sp),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.r),
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
                                            Row(
                                              children: [
                                                TextStyleWidget(title: 'Rs. 250', size: 12.sp, weight: FontWeight.w600, color: MyColors.primaryRed,),
                                                TextStyleWidget(title: '/4 hours', size: 12.sp, color: MyColors.grey,),
                                              ],
                                            ),
                                            Container(
                                              padding: EdgeInsets.all(3.sp),
                                              decoration: BoxDecoration(
                                                color: MyColors.primaryRed,
                                                borderRadius: BorderRadius.circular(2.r),
                                              ),
                                              child: TextStyleWidget(title: 'Now Active', size: 10.sp, color: Colors.white,),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              SizedBox(
                                width: 150.w,
                                height: 25.h,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical:
                                          0.5.h, horizontal: 3.w), // Adjust padding as needed
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.r),
                                      boxShadow: [
                                        BoxShadow(
                                          color: MyColors.grey20,
                                          blurRadius: 5.r,
                                        ),
                                      ],
                                    ),
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: MyColors
                                            .primaryRed, // Use 'primary' for button's color
                                        shadowColor: Colors.transparent,
                                        elevation: 0,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.r),
                                        ),
                                      ),
                                      onPressed: () {},
                                      child: Text(
                                        'View Ticket',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.inter(
                                          color: Colors.white,
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w400,
                                          height: 0.12.h,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Center(
                    child:
                        TextStyleWidget(title: 'Completed Screen', size: 14.sp),
                  ),
                ]),
              ),
            ],
          )),
    );
    ;
  }
}
