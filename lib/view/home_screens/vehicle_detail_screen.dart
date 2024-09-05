import 'dart:io';

import 'package:customer_parking_app/controllers/home_controller.dart';
import 'package:customer_parking_app/view/home_screens/book_parking_details_screen.dart';
import 'package:customer_parking_app/widgets/text_widget.dart';
import 'package:customer_parking_app/widgets/textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../res/color.dart';
import '../../widgets/button_widget.dart';

class VehicleDetailScreen extends StatefulWidget {
  const VehicleDetailScreen({super.key});

  @override
  State<VehicleDetailScreen> createState() => _VehicleDetailScreenState();
}

class _VehicleDetailScreenState extends State<VehicleDetailScreen> {

  String? selectedValue;

  final homeController = Get.find<HomeController>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    homeController.vehicleImage = null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextStyleWidget(
          title: 'Vehicle Details',
          size: 16.sp,
          weight: FontWeight.w600,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(30.sp),
        child: SingleChildScrollView(
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Get.find<HomeController>().vehicleImageBottomSheet(context);
                },
                child: GetBuilder<HomeController>(
                    init: HomeController(),
                    builder: (homeController) {
                      return homeController.vehicleImage != null
                          ? Container(
                              height: 160.h,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              child: Image(
                                  image: FileImage(
                                      File(homeController.vehicleImage!.path))),
                            )
                          : Container(
                              height: 160.h,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10.r),
                                boxShadow: [
                                  BoxShadow(
                                    color: MyColors.grey20,
                                    blurRadius: 8.r,
                                  ),
                                ],
                              ),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.add_circle_outline,
                                      size: 30.sp,
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    TextStyleWidget(
                                        title: 'Add your vehicle image',
                                        size: 12.sp),
                                  ],
                                ),
                              ),
                            );
                    }),
              ),
              SizedBox(
                height: 50.h,
              ),
              TextfieldWidget(hintText: 'Vehicle Name', controller: homeController.vehicleNameController.value,),
              SizedBox(
                height: 15.h,
              ),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  hintText: 'Vehicle Type',
                    hintStyle: GoogleFonts.inter(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey
                    ),
                    filled: true,
                    fillColor: MyColors.textField,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: BorderSide.none,
                    )
                ),
                icon: const Icon(Icons.keyboard_arrow_down),
                value: selectedValue,
                items: ['Option 1', 'Option 2', 'Option 3', 'Option 4']
                    .map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    selectedValue = newValue!;
                  });
                },
              ),
              SizedBox(
                height: 15.h,
              ),
              TextfieldWidget(hintText: 'Number Plate', controller: homeController.vehicleNumberController.value,),
              SizedBox(
                height: 50.h,
              ),
              ButtonWidget(
                loading: false,
                title: 'Proceed',
                onPress: () {
                  Get.to(()=>const BookParkingDetailsScreen());
                },
                buttonColor: MyColors.primaryRed,
                textColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
