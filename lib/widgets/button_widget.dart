import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonWidget extends StatelessWidget {
  final String title;
  final VoidCallback onPress;
  final buttonColor;
  final textColor;
  final bool? loading ;

  ButtonWidget(
      {Key? key,
        required this.title,
        required this.onPress,
        required this.buttonColor,
        required this.textColor,
        this.loading,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      width: double.infinity,
      height: 45.h,
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: 1.0.h), // Adjust padding as needed
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: buttonColor, // Use 'primary' for button's color
              shadowColor: Colors.transparent,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.r),
              ),
            ),
            onPressed: onPress,
            child: loading!
                ? const Center(child: CircularProgressIndicator(color: Colors.white,)) // Loading indicator if needed
                : Text(
              title,
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                color: textColor,
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                height: 0.12.h,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
