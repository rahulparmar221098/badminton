import 'package:badminton/core/providers/botton_navigation.dart';
import 'package:badminton/core/providers/carsoul.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppProviders extends StatelessWidget {
  final Widget child;
  const AppProviders({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CarsoulProvider()),
        ChangeNotifierProvider(create: (_) => BottomNavigationProvider())
      ],
      child: child,
    );
  }
}
