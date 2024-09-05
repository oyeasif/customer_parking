import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../res/color.dart';

class TextfieldWidget extends StatelessWidget {

  final controller;
  final String hintText;
  final keyBoardType;
  final String? Function(String?)? validator;

  const TextfieldWidget({super.key, required this.hintText, this.keyBoardType, this.controller, this.validator,});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      style: GoogleFonts.inter(
        fontSize: 16.sp,
        fontWeight: FontWeight.w500,
      ),
      validator: validator,
      keyboardType: keyBoardType,
      decoration: InputDecoration(
          hintText: hintText,
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
    );
  }
}
