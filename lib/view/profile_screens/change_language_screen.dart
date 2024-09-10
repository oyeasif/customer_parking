import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../res/color.dart';
import '../../res/my_imgs.dart';
import '../../widgets/text_widget.dart';

class ChangeLanguageScreen extends StatefulWidget {
  const ChangeLanguageScreen({super.key});

  @override
  State<ChangeLanguageScreen> createState() => _ChangeLanguageScreenState();
}

class _ChangeLanguageScreenState extends State<ChangeLanguageScreen> {

  List<String> img = [MyImgs.pakistan, MyImgs.unitedKingdom];
  List<String> countryName = ['Pakistan', 'United Kingdom'];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextStyleWidget(
          title: 'Change Language',
          size: 14.sp,
          weight: FontWeight.w600,
        ),
        centerTitle: true,
      ),
      body: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: img.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(30.0),
            child: GestureDetector(
              onTap: (){
                setState(() {
                  currentIndex = index;
                });
              },
              child: Container(
                height: 130.h,
                width: 170.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.r),
                  border: currentIndex == index ? Border.all(color: MyColors.primaryRed, width: 2.w) : Border.all(color: Colors.white),
                  boxShadow: [
                    BoxShadow(
                      color: MyColors.grey20,
                      blurRadius: 5.r,
                    ),
                  ],
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image(image: AssetImage(img[index]),),
                      SizedBox(height: 20.h,),
                      TextStyleWidget(title: countryName[index], size: 14.sp, weight: FontWeight.w600,)
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
