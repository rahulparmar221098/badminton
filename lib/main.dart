import 'package:badminton/app_providers.dart';
import 'package:badminton/app_router.dart';
import 'package:badminton/view/constants.dart';
import 'package:badminton/view/utils/navigator.dart';
import 'package:badminton/view/widgets/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return AppProviders(
        child: MaterialApp(
          navigatorKey: BDMNavigator.navigatorKey,
          title: 'Badminton',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            bottomNavigationBarTheme: BottomNavigationBarThemeData(
                backgroundColor: Colors.white,
                selectedIconTheme:
                    IconThemeData(color: ConstColor.primaryColor, size: 30),
                unselectedIconTheme:
                    IconThemeData(color: ConstColor.lightBlueColor, size: 30)),
            iconTheme: IconThemeData(color: ConstColor.primaryColor),
            textTheme: appTextTheme(),
            primaryColor: ConstColor.primaryColor,
            accentColor: ConstColor.primaryColor,
            buttonColor: ConstColor.primaryColor,
            fontFamily: GoogleFonts.poppins().fontFamily,
            elevatedButtonTheme: ElevatedButtonThemeData(
                style: ButtonStyle(
                    elevation: MaterialStateProperty.all(0),
                    backgroundColor:
                        MaterialStateProperty.all(ConstColor.primaryColor))),
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                textStyle: TextStyle(color: Colors.white, fontSize: 18.sp),
                elevation: 0,
                backgroundColor: ConstColor.primaryColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7.8)),
                primary: Colors.white,
              ),
            ),
          ),
          onGenerateRoute: AppRouter.onGenerateRoute,
          initialRoute: '/',
        ),
      );
    });
  }
}
