import 'package:badminton/view/constants.dart';
import 'package:badminton/view/utils/navigator.dart';
import 'package:badminton/view/widgets/stateful_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class PickoneScreen extends StatelessWidget {
  const PickoneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return StatefulWrapper(
        child: Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 6.2.w, vertical: 5.4.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Pick One,',
                      style: theme.textTheme.headline4
                          ?.copyWith(fontSize: 20.0.sp),
                    ),
                    SizedBox(
                      height: 1.2.h,
                    ),
                    Text(
                      'What you are looking for!',
                      style: GoogleFonts.poppins(
                          fontSize: 13.4.sp, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              Expanded(child: Container()),
              Expanded(
                flex: 4,
                child: InkWell(
                  onTap: () {
                    BDMNavigator.state?.pushNamed('/home');
                  },
                  child: Container(
                    width: 90.h,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset('assets/images/tournament_booking.png'),
                        Text(
                          'Tournament Booking',
                          style: theme.textTheme.subtitle1?.copyWith(
                              color: ConstColor.primaryColor,
                              fontSize: 12.6.sp),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: ConstColor.splashColor,
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(
                            color: ConstColor.primaryColor, width: 2.5)),
                  ),
                ),
              ),
              Expanded(child: Container()),
              Expanded(
                flex: 4,
                child: InkWell(
                  onTap: () {
                    BDMNavigator.state?.pushNamed('/home');
                  },
                  child: Container(
                    width: 90.h,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset('assets/images/court_booking.png'),
                        Text(
                          'Court Booking',
                          style: theme.textTheme.subtitle1?.copyWith(
                              color: ConstColor.primaryColor,
                              fontSize: 12.6.sp),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: ConstColor.splashColor,
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(
                            color: ConstColor.primaryColor, width: 2.5)),
                  ),
                ),
              ),
              Expanded(child: Container()),
            ],
          ),
        ),
      ),
    ));
  }
}
