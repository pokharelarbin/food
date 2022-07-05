import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'enums/color_enum.dart';
// import 'models/color_model.dart';

class ColorModel {
  final String name;
  final Color value;

  ColorModel(this.name, this.value);
}

enum ColorEnum {
  primary,
  textb,
  textn,
  white,
  blue,
  bgwhite,
}

class SizeConfig {
  static double get screenWidth => ScreenUtil().screenWidth;
  static double get screenHeight => ScreenUtil().screenHeight;
}

Map<ColorEnum, ColorModel> mycolors = {
  ColorEnum.primary:
      ColorModel('primary', const Color.fromARGB(249, 249, 249, 1)),
  ColorEnum.textb: ColorModel('textb', const Color.fromRGBO(21, 10, 51, 1)),
  ColorEnum.textn: ColorModel('textn', const Color.fromRGBO(82, 75, 107, 1)),
  ColorEnum.white: ColorModel('white', const Color.fromRGBO(255, 255, 255, 1)),
  ColorEnum.blue: ColorModel('primary', const Color.fromRGBO(19, 1, 96, 1)),
  ColorEnum.bgwhite:
      ColorModel('bgwhite', const Color.fromRGBO(249, 249, 249, 1))
};

final style1 = GoogleFonts.dmSans(
  color: mycolors.values.elementAt(2).value,
  fontSize: 12,
  fontWeight: FontWeight.w400,
);
final style12 = GoogleFonts.dmSans(
  color: mycolors.values.elementAt(1).value,
  fontSize: 12,
  fontWeight: FontWeight.w500,
);
final style121 = GoogleFonts.dmSans(
  color: Colors.red,
  fontSize: 12,
  fontWeight: FontWeight.w500,
);
final style2 = GoogleFonts.tajawal(
  color: Colors.black,
  fontSize: 48,
  fontWeight: FontWeight.w700,
);
final style21 = GoogleFonts.tajawal(
  color: Colors.black,
  fontSize: 32,
  fontWeight: FontWeight.w500,
);

const url =
    'https://c8.alamy.com/comp/2H0RYJE/5-five-years-old-photo-for-passport-or-id-card-emotionally-grimacing-little-boy-with-blond-hair-and-bright-green-eyes-white-background-2H0RYJE.jpg';
