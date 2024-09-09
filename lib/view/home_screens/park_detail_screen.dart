import 'package:customer_parking_app/res/color.dart';
import 'package:customer_parking_app/res/my_imgs.dart';
import 'package:customer_parking_app/view/home_screens/vehicle_detail_screen.dart';
import 'package:customer_parking_app/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

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
              height: double.infinity,
              width: double.infinity,
              color: MyColors.grey10,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Image(
                          height: 250.h,
                          width: double.infinity,
                          image: AssetImage(MyImgs.building),
                          fit: BoxFit.fitWidth,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.w, vertical: 35.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Center(
                                  child: IconButton(
                                    onPressed: (){
                                      Get.back();
                                    },
                                    icon: const Icon(Icons.arrow_back_sharp),
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  const CircleAvatar(
                                    backgroundColor: Colors.white,
                                    child: Center(
                                      child: Icon(
                                        Icons.share,
                                        color: MyColors.primaryOrange,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  const CircleAvatar(
                                    backgroundColor: Colors.white,
                                    child: Center(
                                      child: Icon(
                                        Icons.favorite,
                                        color: MyColors.primaryOrange,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white60,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(40.r),
                          topLeft: Radius.circular(40.r),
                        )
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 15.w,
                        vertical: 20.h,
                      ),
                      child: DefaultTabController(
                        length: 3,
                        child: Column(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        const RatingStars(
                                          starColor: MyColors.ratingColor,
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
                            SizedBox(
                              height: 450.h,
                              child: TabBarView(children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 10.h),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          SvgPicture.asset(MyImgs.timeAway),
                                          SizedBox(width: 5.w,),
                                          TextStyleWidget(title: '10 mins away', size: 12.sp),
                                          SizedBox(width: 20.w,),
                                          SvgPicture.asset(MyImgs.availableSpots),
                                          SizedBox(width: 5.w,),
                                          TextStyleWidget(title: '13 Spots available', size: 12.sp),
                                        ],
                                      ),
                                    ),
                                    TextStyleWidget(title: 'Description', size: 14.sp, weight: FontWeight.w600,),
                                    SizedBox(height: 5.h,),
                                    TextStyleWidget(title: 'The car parking area is a spacious, well-organized facility designed to accommodate a large number of vehicles with ease. It features clearly marked lanes and parking spots, ensuring a smooth flow of traffic and easy navigation. The parking spots are generously sized to accommodate all types of vehicles, Read more',
                                      size: 12.sp,),
                                    SizedBox(height: 15.h,),
                                    TextStyleWidget(title: 'Operated by', size: 14.sp, weight: FontWeight.w600,),
                                    SizedBox(height: 10.h,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        CircleAvatar(
                                          radius: 25.r,
                                          backgroundImage: AssetImage(MyImgs.personProfile),
                                        ),
                                        SizedBox(width: 10.w,),
                                        Expanded(
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              TextStyleWidget(title: 'Ahmad Shah', size: 12.sp, weight: FontWeight.w600,),
                                              TextStyleWidget(title: '10:00 AM - 11:30 PM', size: 12.sp, weight: FontWeight.w600, color: MyColors.grey20,),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          height: 35.h,
                                          width: 35.w,
                                          decoration: BoxDecoration(
                                            color: MyColors.redLight,
                                            shape: BoxShape.circle,
                                          ),
                                          child: Center(child: SvgPicture.asset(MyImgs.chat)),
                                        ),
                                        SizedBox(width: 10.w,),
                                        Container(
                                          height: 35.h,
                                          width: 35.w,
                                          decoration: BoxDecoration(
                                            color: MyColors.redLight,
                                            shape: BoxShape.circle,
                                          ),
                                          child: Center(child: SvgPicture.asset(MyImgs.phone)),
                                        ),

                                      ],
                                    )
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 15.h,),
                                  Row(
                                    children: [
                                      TextStyleWidget(title: 'Gallery', size: 14.sp, weight: FontWeight.w600,),
                                      SizedBox(width: 5.w,),
                                      TextStyleWidget(title: '(5)', size: 12.sp, color: MyColors.primaryRed,),
                                    ],
                                  ),
                                    GridView.builder(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      itemCount: 3,
                                      padding: EdgeInsets.zero,
                                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                                      itemBuilder: (context, index) {
                                        return Padding(
                                          padding: EdgeInsets.symmetric(horizontal: 5.0.sp),
                                          child: Container(
                                            height: 70.h,
                                            width: 70.w,
                                            child: Image(image: AssetImage(MyImgs.building)),
                                          ),
                                        );
                                      },
                                    ),
                                ],),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 15.h,),
                                    TextStyleWidget(title: 'Reviews', size: 14.sp, weight: FontWeight.w600,),
                                    SizedBox(height: 15.h,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  TextStyleWidget(title: 'Muhammad Qayum', size: 12.sp),
                                                  const RatingStars(
                                                    starCount: 5,
                                                    starColor: MyColors.ratingColor,
                                                    valueLabelVisibility: false,
                                                    value: 5,
                                                  ),
                                                ],
                                              ),
                                              SizedBox(height: 5.h,),
                                              TextStyleWidget(title: 'Specious Parking', size: 12.sp, weight: FontWeight.w600,),
                                              SizedBox(height: 5.h,),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  TextStyleWidget(title: 'Helpful?    Yes(2)   |   No(0)', size: 12.sp, color: MyColors.grey,),
                                                  TextStyleWidget(title: 'Nov 09, 2022', size: 12.sp, color: MyColors.grey,),

                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    const Divider(),
                                  ],
                                ),
                              ]),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 90.h,
            color: Colors.white60,
            child: Container(
              padding: EdgeInsets.all(15.sp),
              height: 90.h,
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
                      TextStyleWidget(
                        title: 'Total Price',
                        size: 12.sp,
                        weight: FontWeight.w500,
                        color: MyColors.grey,
                      ),
                      Row(
                        children: [
                          TextStyleWidget(
                            title: 'Rs 50',
                            size: 14.sp,
                            weight: FontWeight.w500,
                            color: MyColors.primaryOrange,
                          ),
                          TextStyleWidget(
                            title: '/hr',
                            size: 12.sp,
                            weight: FontWeight.w500,
                            color: MyColors.grey,
                          ),
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
                            backgroundColor: MyColors
                                .primaryOrange, // Use 'primary' for button's color
                            shadowColor: Colors.transparent,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.r),
                            ),
                          ),
                          onPressed: () {
                            Get.to(()=>const VehicleDetailScreen());
                          },
                          child: TextStyleWidget(
                            title: 'Pick Spot',
                            size: 14.sp,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
