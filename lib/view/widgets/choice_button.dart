import 'package:badminton/view/constants.dart';
import 'package:flutter/material.dart';

class ChoiceButton extends StatelessWidget {
  final String text;
  final ThemeData theme;
  bool isActive = false;
  bool isShowOutline = false;
  final IconData? icon;
  final Widget? image;
  final VoidCallback? onPressed;

  ChoiceButton(
      {Key? key,
      required this.text,
      required this.theme,
      this.isActive = false,
      this.isShowOutline = false,
      this.icon,
      this.image,
      this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onPressed,
        child: Container(
          constraints: BoxConstraints.expand(height: 100.0),
          decoration: BoxDecoration(
            border: isShowOutline
                ? Border.all(color: ConstColor.primaryColor, width: 1.6)
                : null,
            borderRadius: BorderRadius.circular(8.6),
            color: isActive ? ConstColor.primaryColor : Colors.white,
          ),
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Visibility(
              visible: icon != null ? true : false,
              child: Icon(
                icon,
                color: isActive ? Colors.white : ConstColor.primaryColor,
              ),
            ),
            Visibility(
                visible: image != null ? true : false,
                child: SizedBox(child: image)),
            Text(
              '  $text',
              style: theme.textTheme.bodyText1?.copyWith(
                  fontSize: 17,
                  color: isActive ? Colors.white : ConstColor.primaryColor),
            )
          ]),
        ),
      ),
    );
  }
}
