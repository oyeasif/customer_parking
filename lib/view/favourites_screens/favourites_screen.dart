import 'package:customer_parking_app/res/my_imgs.dart';
import 'package:customer_parking_app/widgets/textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../res/color.dart';
import '../../widgets/text_widget.dart';

class FavouritesScreen extends StatefulWidget {
  const FavouritesScreen({Key? key}) : super(key: key);

  @override
  State<FavouritesScreen> createState() => _FavouritesScreenState();
}

class _FavouritesScreenState extends State<FavouritesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextStyleWidget(
          title: 'Favourites',
          size: 14.sp,
          weight: FontWeight.w600,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 15.w, right: 15.w,),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextFormField(
                controller: TextEditingController(),
                style: GoogleFonts.inter(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                ),
                validator: (value) {},
                decoration: InputDecoration(
                    hintText: 'Search',
                    hintStyle: GoogleFonts.inter(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey),
                    prefixIcon: SizedBox(
                        height: 16.h,
                        width: 16.w,
                        child: Center(
                            child: SvgPicture.asset(
                          MyImgs.search,
                          color: MyColors.grey,
                        ))),
                    filled: true,
                    fillColor: MyColors.textField,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    )),
              ),
              SizedBox(
                height: 30.h,
              ),
              ListView.builder(
                shrinkWrap: true,
                  itemCount: 5,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.all(8.sp),
                      child: Container(
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
                        child: ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: Image(image: AssetImage(MyImgs.building),),
                          title: TextStyleWidget(title: 'Sheikh Yaseen Tower', size: 12.sp, weight: FontWeight.w600,),
                          subtitle: TextStyleWidget(title: 'Peshawar', size: 10.sp, color: MyColors.grey,),
                          trailing: SvgPicture.asset(MyImgs.favourites, color: MyColors.primaryRed,),
                        ),
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
    );
    ;
  }
}
