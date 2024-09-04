import 'package:customer_parking_app/res/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStyleWidget extends StatelessWidget {
  final title;
  double size;
  final weight;
  final color;
  final height;
  final textAlign;
  double letterSpacing;
  final underline;

  TextStyleWidget({Key? key, required this.title, required this.size, this.weight, this.color, this.textAlign, this.height, this.letterSpacing = 0, this.underline}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(title,textAlign: textAlign, style: GoogleFonts.poppins(fontWeight: weight, color: color, fontSize: size,fontStyle: FontStyle.normal, height: height, letterSpacing: letterSpacing, decoration: underline, decorationColor: MyColors.primaryOrange),);
  }
}
