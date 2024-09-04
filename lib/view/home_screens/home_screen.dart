import 'package:animate_do/animate_do.dart';
import 'package:customer_parking_app/controllers/home_controller.dart';
import 'package:customer_parking_app/res/color.dart';
import 'package:customer_parking_app/res/my_imgs.dart';
import 'package:customer_parking_app/view/home_screens/park_detail_screen.dart';
import 'package:customer_parking_app/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final homeController = Get.find<HomeController>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          GoogleMap(
            padding: EdgeInsets.only(bottom: 10.h, left: 10.w, right: 10.w),
            zoomControlsEnabled: false,
            myLocationEnabled: true,
            myLocationButtonEnabled: true,
            tiltGesturesEnabled: true,
            markers: {
              Marker(
                markerId: MarkerId(MyImgs.carLocation,),
                icon: homeController.userLocation == null ? BitmapDescriptor.defaultMarker : homeController.userLocation!,
                position: const LatLng(34.013195, 71.500863),
              ),
            },
            // onMapCreated: _onMapCreated,
            initialCameraPosition: const CameraPosition(
              target: LatLng(34.004540,71.503617),
              zoom: 14.0,
            ),
            // markers: _createParkingMarkers(), // Function to create markers
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                children: [
                  SvgPicture.asset(MyImgs.homeContainer),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 40.h, left: 15.w),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                  radius: 25.r,
                                  backgroundImage: AssetImage(MyImgs.personProfile),
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TextStyleWidget(
                                      title: 'Welcome',
                                      size: 14.sp,
                                      color: Colors.white,
                                    ),
                                    TextStyleWidget(
                                      title: 'M.Musab',
                                      size: 14.sp,
                                      color: Colors.white,
                                      weight: FontWeight.w600,
                                    ),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            TextStyleWidget(
                              title: 'Get Your \nSecure Park',
                              size: 24.sp,
                              weight: FontWeight.w600,
                              color: Colors.white,
                              height: 1.0,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    top: 60,
                    right: 0,
                    child: Align(
                        alignment: Alignment.topRight,
                        child: FadeInRight(
                            duration: const Duration(seconds: 2),
                            child: Image(image: AssetImage(MyImgs.car)))),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(20.sp),
                child: GestureDetector(
                  onTap: (){
                    Get.to(()=>const ParkDetailScreen());
                  },
                  child: Container(
                    padding: EdgeInsets.all(10.sp),
                    height: 120.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image(
                            height: 103.h,
                            width: 103.w,
                            image: AssetImage(MyImgs.building)),
                        SizedBox(width: 10.w,),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 10.h),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextStyleWidget(title: 'Sheikh Yaseen Plaza', size: 12.sp, weight: FontWeight.w600,),
                              TextStyleWidget(title: 'Peshawar', size: 10.sp, color: MyColors.grey,),
                              Spacer(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Image(image: AssetImage(MyImgs.rs)),
                                      SizedBox(width: 5.w,),
                                      TextStyleWidget(title: '50/hr', size: 10.sp),
                                    ],
                                  ),
                                  SizedBox(width: 30.w,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(MyImgs.meter),
                                      SizedBox(width: 5.w,),
                                      TextStyleWidget(title: '100 m', size: 10.sp),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

}

// Padding(
// padding: EdgeInsets.symmetric(horizontal: 30.w),
// child: TextFormField(
// style: GoogleFonts.inter(
// fontSize: 16.sp,
// fontWeight: FontWeight.w500,
// ),
// validator: (value){},
// keyboardType: TextInputType.text,
// decoration: InputDecoration(
// contentPadding: EdgeInsets.zero,
// hintText: '    Search by name or area',
// hintStyle: GoogleFonts.inter(
// fontWeight: FontWeight.w600,
// color: Colors.grey
// ),
// suffixIcon: Container(
// height: 30.h,
// width: 30.w,
// child: Center(child: SvgPicture.asset(MyImgs.search))),
// filled: true,
// fillColor: Colors.white,
// border: OutlineInputBorder(
// borderRadius: BorderRadius.circular(20.r),
// borderSide: BorderSide.none,
// )
// ),
// ),
// ),