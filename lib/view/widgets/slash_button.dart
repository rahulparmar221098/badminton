import 'package:badminton/view/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class SplashButton extends StatelessWidget {
  final double? height, width;
  final Widget child;
  final VoidCallback? onPressed;
  final double? fontSize;
  SplashButton(
      {Key? key,
      this.height,
      this.width,
      required this.child,
      this.onPressed,
      this.fontSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      height: this.height ?? 7.h,
      width: this.width ?? 90.w,
      child: TextButton(
          onPressed: onPressed,
          style: theme.textButtonTheme.style?.copyWith(
              backgroundColor:
                  MaterialStateProperty.all(ConstColor.splashColor)),
          child: child),
    );
  }
}
