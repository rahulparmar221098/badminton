import 'package:flutter/material.dart';

class AppIcon extends StatelessWidget {
  final VoidCallback? onPressed;
  final Color? color;
  final double? height, width;
  final bool isBoxFit;
  AppIcon(
      {Key? key,
      this.onPressed,
      this.color,
      this.height = 40,
      this.width = 40,
      this.isBoxFit = false})
      : super(key: key);
  final String image_path = '';
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(color: this.color, shape: BoxShape.circle),
        child: FittedBox(
          fit: isBoxFit ? BoxFit.contain : BoxFit.none,
          child: Image.asset(image_path),
        ),
      ),
    );
  }
}

class SendIcon extends AppIcon {
  SendIcon({Key? key, VoidCallback? onPressed})
      : super(
            key: key,
            onPressed: onPressed,
            color: Colors.white.withOpacity(0),
            height: 15,
            width: 15);
  final String image_path = 'assets/images/icons/send_icon.png';
}

class SearchIcon extends AppIcon {
  SearchIcon({Key? key, VoidCallback? onPressed})
      : super(key: key, onPressed: onPressed, color: Colors.white24);
  final String image_path = 'assets/images/icons/search.png';
}

class BellIcon extends AppIcon {
  BellIcon({Key? key, VoidCallback? onPressed})
      : super(key: key, onPressed: onPressed, color: Colors.white24);
  final String image_path = 'assets/images/icons/bell.png';
}

class UsersIcon extends AppIcon {
  UsersIcon({Key? key, VoidCallback? onPressed})
      : super(key: key, onPressed: onPressed);
  final String image_path = 'assets/images/icons/users.png';
}

class ShuttlecockIcon extends AppIcon {
  ShuttlecockIcon({Key? key, VoidCallback? onPressed})
      : super(
            key: key,
            onPressed: onPressed,
            height: 17,
            width: 17,
            isBoxFit: true);
  final String image_path = 'assets/images/icons/shuttlecock.png';
}

class TechnicalIcon extends AppIcon {
  TechnicalIcon({Key? key, VoidCallback? onPressed})
      : super(
            key: key,
            onPressed: onPressed,
            height: 30,
            width: 30,
            isBoxFit: true);
  final String image_path = 'assets/images/icons/technical.png';
}
