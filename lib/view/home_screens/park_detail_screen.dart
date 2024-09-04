import 'package:customer_parking_app/res/color.dart';
import 'package:customer_parking_app/res/my_imgs.dart';
import 'package:customer_parking_app/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ParkDetailScreen extends StatefulWidget {
  const ParkDetailScreen({super.key});

  @override
  State<ParkDetailScreen> createState() => _ParkDetailScreenState();
}

class _ParkDetailScreenState extends State<ParkDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.grey10,
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: MyColors.grey10,
              child: Column(
                children: [
                  Stack(
                    children: [
                      Image(
                        height: 300.h,
                        width: double.infinity,
                        image: AssetImage(MyImgs.building),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 40.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Center(
                                child: Icon(Icons.arrow_back_sharp, color: Colors.black,),
                              ),
                            ),
                            Row(
                              children: [
                                const CircleAvatar(
                                  backgroundColor: Colors.white,
                                  child: Center(
                                    child: Icon(Icons.share, color: MyColors.primaryOrange,),
                                  ),
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                const CircleAvatar(
                                  backgroundColor: Colors.white,
                                  child: Center(
                                    child: Icon(Icons.favorite, color: MyColors.primaryOrange,),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 15.w,
                    ),
                    child: DefaultTabController(
                      length: 3,
                      child: Column(
                        children: [
                          ListView(
                            shrinkWrap: true,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 23.h,
                                    width: 84.w,
                                    decoration: BoxDecoration(
                                      color: MyColors.redLight,
                                      borderRadius: BorderRadius.circular(5.r),
                                    ),
                                    child: Center(
                                      child: TextStyleWidget(
                                        title: 'Car Parking',
                                        size: 10.sp,
                                        color: MyColors.primaryOrange,
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      const RatingStars(
                                        value: 5,
                                        starCount: 1,
                                        valueLabelVisibility: false,
                                      ),
                                      SizedBox(
                                        width: 5.w,
                                      ),
                                      TextStyleWidget(
                                        title: '4.8',
                                        size: 12.sp,
                                        weight: FontWeight.w500,
                                        color: MyColors.grey,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              TextStyleWidget(
                                title: 'Sheikh Yaseen Plaza',
                                size: 20.sp,
                                weight: FontWeight.w700,
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              TextStyleWidget(
                                title: 'Arbab Road Peshawar Pakistan',
                                size: 12.sp,
                                weight: FontWeight.w500,
                                color: MyColors.grey,
                              ),
                              TabBar(
                                  dividerColor: Colors.transparent,
                                  indicatorColor: MyColors.primaryOrange,
                                  labelColor: MyColors.primaryOrange,
                                  labelPadding: EdgeInsets.all(10.sp),
                                  tabs: const [
                                    Center(child: Text('About')),
                                    Center(child: Text('Gallery')),
                                    Center(child: Text('Review')),
                                  ]),
                            ],
                          ),
                          const SizedBox(
                            height: 100,
                            child: TabBarView(children: [
                              Center(child: Text('data1')),
                              Center(child: Text('data2')),
                              Center(child: Text('data3')),
                            ]),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(15.sp),
            height: 70.h,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.r),
                  topRight: Radius.circular(20.r),
                )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextStyleWidget(title: 'Total Price', size: 12.sp, weight: FontWeight.w500, color: MyColors.grey,),
                    Row(
                      children: [
                        TextStyleWidget(title: 'Rs 50', size: 14.sp, weight: FontWeight.w500, color: MyColors.primaryOrange,),
                        TextStyleWidget(title: '/hr', size: 12.sp, weight: FontWeight.w500, color: MyColors.grey,),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  width: 160.w,
                  height: 45.h,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: 1.0.h), // Adjust padding as needed
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.r),
                      ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: MyColors.primaryOrange, // Use 'primary' for button's color
                          shadowColor: Colors.transparent,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.r),
                          ),
                        ),
                        onPressed: (){},
                        child: TextStyleWidget(title: 'Pick Spot', size: 14.sp, color: Colors.white,),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
