import 'package:badminton/core/providers/botton_navigation.dart';
import 'package:badminton/view/constants.dart';
import 'package:badminton/view/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppBottomNavigation extends StatelessWidget {
  const AppBottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BottomNavigationProvider _provider =
        Provider.of<BottomNavigationProvider>(context);
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      elevation: 0,
      currentIndex: _provider.currentIndex,
      type: BottomNavigationBarType.fixed,
      onTap: (int index) {
        _provider.updateIndex(index);
      },
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home_outlined,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.date_range,
            ),
            label: 'Date'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_outline,
            ),
            label: 'Like'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.perm_identity_outlined,
            ),
            label: 'profile')
      ],
    );
  }
}
