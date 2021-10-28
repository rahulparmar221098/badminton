import 'package:badminton/view/constants.dart';
import 'package:badminton/view/utils/navigator.dart';
import 'package:badminton/view/widgets/main_button.dart';
import 'package:badminton/view/widgets/slash_button.dart';
import 'package:badminton/view/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:badminton/view/widgets/stateful_wrapper.dart';
import 'package:google_fonts/google_fonts.dart';

class SinginScreen extends StatelessWidget {
  const SinginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return StatefulWrapper(
        child: Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 6.2.w, vertical: 5.4.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Let\'s Sing you in.',
                style: theme.textTheme.headline4?.copyWith(fontSize: 20.0.sp),
              ),
              SizedBox(
                height: 1.2.h,
              ),
              Text(
                'You\'ve been missed!',
                style: GoogleFonts.poppins(
                    fontSize: 13.4.sp, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 5.2.h,
              ),
              BDMTextField(
                hintText: 'Email',
              ),
              SizedBox(
                height: 2.2.h,
              ),
              BDMTextField(hintText: 'Password', obscureText: true),
              SizedBox(
                height: 2.2.h,
              ),
              Container(
                  margin: EdgeInsets.only(right: 20),
                  child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Show",
                        style: TextStyle(
                            fontSize: 15.0, color: ConstColor.primaryColor),
                      ))),
              SizedBox(
                height: 5.2.h,
              ),
              MainButton(
                  text: 'Sign in',
                  onPressed: () {
                    BDMNavigator.state?.pushNamed('/home');
                  }),
              SizedBox(
                height: 3.0.h,
              ),
              SplashButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/google_icon.png'),
                    SizedBox(
                      width: 23,
                    ),
                    Text(
                      'Sign in with Google',
                      style: GoogleFonts.poppins(
                          fontSize: 14.2.sp,
                          letterSpacing: 0.5,
                          color: ConstColor.primaryColor,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 3.0.h,
              ),
              Align(
                  alignment: Alignment.center,
                  child: Text(
                    'By continueing you agree VIN\'s Terms of',
                    style: TextStyle(color: ConstColor.authLabelColor),
                  )),
              Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Services & Privacy Policy',
                    style: TextStyle(color: ConstColor.authLabelColor),
                  )),
              Expanded(child: Container()),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account?',
                        style: TextStyle(color: ConstColor.authLabelColor),
                      ),
                      InkWell(
                        onTap: () {
                          BDMNavigator.navigatorKey.currentState
                              ?.pushNamed('/singup');
                          // navigatorKey
                        },
                        child: Text(
                          ' Create one',
                          style: TextStyle(
                              color: ConstColor.primaryColor,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    ));
  }
}
