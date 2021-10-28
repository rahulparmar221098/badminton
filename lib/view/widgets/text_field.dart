import 'package:badminton/view/constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BDMTextField extends StatelessWidget {
  final String? hintText;
  final bool obscureText;
  const BDMTextField({Key? key, this.hintText, this.obscureText = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 13.0, vertical: 2),
      height: 7.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: ConstColor.splashColor,
          border: Border.all(color: ConstColor.primaryColor, width: 1.3)),
      child: TextFormField(
        obscureText: obscureText,
        decoration: InputDecoration(
            hintStyle: theme.textTheme.subtitle1,
            hintText: hintText,
            border: InputBorder.none),
      ),
    );
  }
}
