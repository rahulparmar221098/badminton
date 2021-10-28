import 'package:badminton/view/widgets/stateful_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BadMintonApp extends StatelessWidget {
  const BadMintonApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return StatefulWrapper(
        child: Scaffold(
      // appBar: AppBar(),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.done,
              size: 50.sp,
            ),
            Text(
              'All Set',
              style: textTheme.headline6?.copyWith(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 1.4.h,
            ),
            Text('You Profile has been '),
            SizedBox(
              height: 0.4.h,
            ),
            Text('Created'),
            SizedBox(
              height: 9.h,
            ),
            SizedBox(
              height: 6.h,
              width: 88.w,
              child: MaterialButton(
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                color: Colors.grey,
                onPressed: () {},
                child: Text(
                  "Pick Location",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
