import 'package:badminton/view/screens/home.dart';
import 'package:badminton/view/screens/near_by_courts.dart';
import 'package:badminton/view/screens/pack_one.dart';
import 'package:badminton/view/screens/pick_location.dart';
import 'package:badminton/view/screens/singin.dart';
import 'package:badminton/view/screens/singup.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/singin':
        return MaterialPageRoute(builder: (_) => SinginScreen());
      case '/singup':
        return MaterialPageRoute(builder: (_) => SingupScreen());
      case '/picklocation':
        return MaterialPageRoute(builder: (_) => PickLocationScreen());
      case '/pickone':
        return MaterialPageRoute(builder: (_) => PickoneScreen());
      case '/home':
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case '/nearby_courts':
        return MaterialPageRoute(builder: (_) => NearByCourtsScreen());
      default:
        return MaterialPageRoute(builder: (_) => SinginScreen());
    }
  }
}
