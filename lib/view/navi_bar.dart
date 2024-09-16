import 'package:customer_parking_app/res/my_imgs.dart';
import 'package:customer_parking_app/view/bookings_screens/bookings_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../animation/auto_shake_animation.dart';
import '../res/color.dart';
import '../res/strings.dart';
import 'favourites_screens/favourites_screen.dart';
import 'home_screens/home_screen.dart';
import 'profile_screens/profile_screen.dart';

class NaviBarScreen extends StatefulWidget {

  int currentindex = 0;

  NaviBarScreen({super.key, required this.currentindex});

  @override
  State<NaviBarScreen> createState() => _NaviBarScreenState();
}

class _NaviBarScreenState extends State<NaviBarScreen> {


  // RxInt _currentIndex = 0.obs;
  final List<Widget> _screens = [
    const HomeScreen(),
    const FavouritesScreen(),
    const BookingsScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      extendBody: true,
      body: Padding(
        padding: EdgeInsets.only(bottom: 60),
        child: _screens[widget.currentindex],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(12.0)
            .copyWith(left: 0, right: 0, bottom: 0),
        child: Container(
          decoration: const BoxDecoration(boxShadow: [
            BoxShadow(
              color: Colors.white12,
              offset:  Offset(
                8.0,
                8.0,
              ),
              blurRadius: 4.0,
              spreadRadius: 4.0,
            )
          ]),
          child: BottomNavigationBar(
            showSelectedLabels: true,
            showUnselectedLabels: false,
            selectedItemColor: MyColors.primaryOrange,
            unselectedItemColor: MyColors.grey20,
            backgroundColor: Colors.white,
            elevation: 0,
            iconSize: 24.sp,
            currentIndex: widget.currentindex,
            onTap: (value) {
              setState(() {
                widget.currentindex = value;
              });
            },
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.symmetric(vertical: 6.h),
                  child: SvgPicture.asset(
                    MyImgs.home,
                    color: MyColors.grey20,
                  ),
                ),
                label: Strings.home.tr,
                activeIcon: CustomShakeAnimation(
                  begin: '-5.0',
                  end: '5.0',
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 6),
                    child: SvgPicture.asset(
                      MyImgs.home,
                      color: MyColors.primaryOrange,
                    ),
                  ),
                ),
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.symmetric(vertical: 6),
                  child: SvgPicture.asset(
                    MyImgs.favourites,
                    color: MyColors.grey20,
                  ),
                ),
                label: Strings.favourites.tr,
                activeIcon: CustomShakeAnimation(
                  begin: '-5.0',
                  end: '5.0',
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 6),
                    child: SvgPicture.asset(
                      MyImgs.favourites,
                      color: MyColors.primaryOrange,
                    ),
                  ),
                ),
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.symmetric(vertical: 6),
                  child: SvgPicture.asset(
                    MyImgs.vector,
                    color: MyColors.grey20,
                  ),
                ),
                label: Strings.bookings.tr,
                activeIcon: CustomShakeAnimation(
                  begin: '-5.0',
                  end: '5.0',
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 6),
                    child: SvgPicture.asset(
                      MyImgs.vector,
                      color: MyColors.primaryOrange,
                    ),
                  ),
                ),
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.symmetric(vertical: 6),
                  child: SvgPicture.asset(
                    MyImgs.profile,
                    color: MyColors.grey20,
                  ),
                ),
                label: Strings.profile.tr,
                activeIcon: CustomShakeAnimation(
                  begin: '-5.0',
                  end: '5.0',
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 6),
                    child: SvgPicture.asset(
                      MyImgs.profile,
                      color: MyColors.primaryOrange,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

}
