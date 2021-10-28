import 'package:badminton/view/constants.dart';
import 'package:badminton/view/utils/navigator.dart';
import 'package:badminton/view/widgets/icons.dart';
import 'package:badminton/view/widgets/stateful_wrapper.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class NearByCourtsScreen extends StatelessWidget {
  static const double radius = 20;
  const NearByCourtsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return StatefulWrapper(
        child: Scaffold(
      backgroundColor: ConstColor.primaryColor,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            BDMNavigator.state?.pop();
          },
        ),
        title: new Container(
          // width: 50.w,
          child: new Text(
            'Nearby Courts',
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.headline6
                ?.copyWith(fontSize: 20, color: Colors.white),
          ),
        ),
        actions: [
          Container(margin: EdgeInsets.only(right: 10), child: SearchIcon()),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                width: 100.w,
                // height: 100.h,
                margin: EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25))),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 30, bottom: 30),
                      decoration: BoxDecoration(
                          color: ConstColor.primaryColor,
                          borderRadius: BorderRadius.circular(20.0)),
                      width: 90.w,
                      height: 8.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 80,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.sort,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Sort by',
                                  style: theme.textTheme.bodyText1?.copyWith(
                                      color: ConstColor.whiteColor,
                                      fontSize: 17),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                              child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20.0),
                            child: Container(
                              color: Colors.white38,
                            ),
                          )),
                          Expanded(
                            flex: 80,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.filter_alt_outlined,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Filter by',
                                  style: theme.textTheme.bodyText1?.copyWith(
                                      color: ConstColor.whiteColor,
                                      fontSize: 17),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 40,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 21),
                            child: Container(
                              margin: EdgeInsets.only(bottom: 30),
                              height: 33.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(radius),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      spreadRadius: 5,
                                      blurRadius: 10,
                                      offset: Offset(
                                          0, 5), // changes position of shadow
                                    )
                                  ]),
                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(15),
                                        height: 22.h,
                                        width: 100.w,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(radius),
                                          child: Image.network(
                                            'https://im.whatshot.in/img/2018/Oct/pdmba-cropped-2-1539107322.jpg',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        top: 25,
                                        right: 27,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          child: Container(
                                            height: 26,
                                            width: 60,
                                            alignment: Alignment.center,
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 7),
                                            color: ConstColor.splashColor,
                                            child: Text(
                                              '1.2 km',
                                              style: theme.textTheme.caption
                                                  ?.copyWith(
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color: ConstColor
                                                          .primaryColor),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  contentPadding(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Indoor Stadium',
                                              style: theme.textTheme.subtitle1
                                                  ?.copyWith(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w600),
                                            ),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.ac_unit,
                                                  size: 17,
                                                ),
                                                Text('Technical')
                                              ],
                                            )
                                          ],
                                        ),
                                        Text(
                                          'M78Q+VM6, Mandi Gobinand, Punjab 147301',
                                          style: theme.textTheme.caption,
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 1,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.yellow,
                                                ),
                                                Text(
                                                  '4.9',
                                                  style:
                                                      theme.textTheme.bodyText1,
                                                )
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  '\u{20B9} 150',
                                                  style: theme
                                                      .textTheme.subtitle2
                                                      ?.copyWith(fontSize: 16),
                                                ),
                                                Text('/hour')
                                              ],
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        })
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }

  Widget contentPadding({required Widget child}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: child,
    );
  }
}
