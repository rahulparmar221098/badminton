import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class MainButton extends StatelessWidget {
  final double? height, width;
  final String text;
  final VoidCallback? onPressed;
  final double? fontSize;
  MainButton(
      {Key? key,
      this.height,
      this.width,
      required this.text,
      this.onPressed,
      this.fontSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: this.height ?? 7.h,
      width: this.width ?? 90.w,
      child: TextButton(
          onPressed: onPressed,
          child: Text(
            text,
            style: GoogleFonts.poppins(
                fontSize: fontSize ?? 14.2.sp,
                letterSpacing: 0.5,
                color: Colors.white,
                fontWeight: FontWeight.w500),
          )),
    );
  }
}
