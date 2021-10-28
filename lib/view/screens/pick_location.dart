import 'package:badminton/view/constants.dart';
import 'package:badminton/view/utils/navigator.dart';
import 'package:badminton/view/widgets/main_button.dart';
import 'package:badminton/view/widgets/stateful_wrapper.dart';
import 'package:badminton/view/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class PickLocationScreen extends StatelessWidget {
  const PickLocationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return StatefulWrapper(
        child: Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(child: Container()),
                    Expanded(
                      flex: 2,
                      child: SizedBox(
                          height: 40.h,
                          width: 40.w,
                          child:
                              Image.asset('assets/images/badminton_icon.png')),
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'All Set',
                            style: theme.textTheme.headline4
                                ?.copyWith(fontSize: 20.sp),
                          ),
                          SizedBox(
                            height: 0.4.h,
                          ),
                          Text(
                            'Your Profile has been created',
                            style: theme.textTheme.bodyText2?.copyWith(
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w300,
                                color: ConstColor.darkColor),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: MainButton(
                          text: 'Pick Location',
                          onPressed: () {
                            _showBottomSheet(context);
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }

  void _showBottomSheet(context) {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        context: context,
        builder: (BuildContext) {
          return Column(
            children: [
              Expanded(
                flex: 4,
                child: Column(
                  children: [
                    SizedBox(
                      height: 5.h,
                    ),
                    SizedBox(
                      width: 90.w,
                      child: BDMTextField(
                        hintText: 'Location',
                      ),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    ListTile(
                      leading: Icon(Icons.my_location,
                          color: ConstColor.primaryColor),
                      horizontalTitleGap: 0.0,
                      title: Text(
                        "Use current location",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: ConstColor.primaryColor),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(flex: 3, child: Container()),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 17),
                  // color: Colors.red,
                  child: MainButton(
                    text: 'Done',
                    onPressed: () {
                      BDMNavigator.state?.pushNamed('/pickone');
                    },
                  ),
                ),
              ),
              Expanded(child: Container()),
            ],
          );
        });
  }
}
