import 'package:badminton/view/constants.dart';
import 'package:badminton/view/utils/navigator.dart';
import 'package:badminton/view/utils/utils.dart';
import 'package:badminton/view/widgets/botton_navigation.dart';
import 'package:badminton/view/widgets/choice_button.dart';
import 'package:badminton/view/widgets/dashed_line.dart';
import 'package:badminton/view/widgets/icons.dart';
import 'package:badminton/view/widgets/promo_code_slider.dart';
import 'package:badminton/view/widgets/stateful_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatelessWidget {
  Theme? theme;
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return StatefulWrapper(
        child: Scaffold(
      bottomNavigationBar: AppBottomNavigation(),
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
        title: Row(
          children: [
            Expanded(
                flex: 4,
                child: Row(
                  children: [
                    SendIcon(),
                    Flexible(
                      child: new Container(
                        width: 50.w,
                        child: new Text(
                          '  Bangalore, India',
                          overflow: TextOverflow.ellipsis,
                          style: new TextStyle(
                              fontSize: 13.0, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ))
          ],
        ),
        actions: [
          Container(margin: EdgeInsets.only(right: 10), child: SearchIcon()),
          Container(margin: EdgeInsets.only(right: 10), child: BellIcon())
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    height: 45.h,
                    decoration: BoxDecoration(
                        color: ConstColor.primaryColor,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(30),
                          bottomLeft: Radius.circular(30),
                        )),
                  ),
                  Container(
                    height: 40.h,
                  )
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        contentPadding(
                          child: Container(
                            height: 12.h,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Hey User Let\'s',
                                  style: theme.textTheme.headline4?.copyWith(
                                      fontSize: 17.0.sp, color: Colors.white),
                                ),
                                SizedBox(
                                  height: 0.2.h,
                                ),
                                Text(
                                  'Select a venue to play',
                                  style: theme.textTheme.headline4?.copyWith(
                                      fontSize: 17.0.sp,
                                      color: Colors.white,
                                      letterSpacing: 0.1),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 23.6.h,
                          child: Column(
                            children: [
                              contentPadding(
                                child: Container(
                                  margin: EdgeInsets.only(bottom: 10),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Special Promo',
                                            style: theme.textTheme.subtitle1
                                                ?.copyWith(color: Colors.white),
                                          ),
                                          Text(
                                            'See all promo',
                                            style: theme.textTheme.bodyText2
                                                ?.copyWith(color: Colors.white),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              PromocodeSlider(),
                            ],
                          ),
                        ),
                        contentPadding(
                          child: Container(
                              height: 27.7.h,
                              child: Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      flex: 7,
                                      child: Row(
                                        children: [
                                          Expanded(
                                            flex: 10,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Icon(
                                                  Icons.date_range,
                                                  size: 27.sp,
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text('15 April 2021',
                                                        style: theme
                                                            .textTheme.subtitle1
                                                            ?.copyWith(
                                                          fontSize: 17,
                                                        )),
                                                    Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Text('05:30',
                                                            style: theme
                                                                .textTheme
                                                                .subtitle1
                                                                ?.copyWith(
                                                              fontSize: 17,
                                                            )),
                                                        Text(' PM',
                                                            style: theme
                                                                .textTheme
                                                                .bodyText2
                                                                ?.copyWith(
                                                                    height: 1.6,
                                                                    color: Colors
                                                                        .grey)),
                                                      ],
                                                    )
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                          Expanded(
                                              flex: 1,
                                              child: MySeparator(
                                                color: ConstColor.primaryColor
                                                    .withOpacity(0.4),
                                                height: 2,
                                                isVertical: true,
                                              )),
                                          Expanded(
                                              flex: 10,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  UsersIcon(),
                                                  Container(
                                                    height: 5.h,
                                                    width: 25.w,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        border: Border.all(
                                                            color: ConstColor
                                                                .primaryColor)),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceAround,
                                                      children: [
                                                        Icon(Icons.remove),
                                                        Text(
                                                          '2',
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          style: theme.textTheme
                                                              .subtitle1
                                                              ?.copyWith(
                                                            fontSize: 18,
                                                          ),
                                                        ),
                                                        Icon(Icons.add),
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              ))
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                        flex: 4,
                                        child: Container(
                                          width: 82.w,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(11),
                                              border: Border.all(
                                                  color:
                                                      ConstColor.primaryColor,
                                                  width: 2.0)),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              ChoiceButton(
                                                  image: ShuttlecockIcon(),
                                                  text: 'General',
                                                  theme: theme,
                                                  isActive: true),
                                              ChoiceButton(
                                                image: TechnicalIcon(),
                                                text: 'Technical',
                                                theme: theme,
                                              ),
                                            ],
                                          ),
                                        )),
                                    Container(
                                      margin: EdgeInsets.only(top: 10),
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 20),
                                      child: MySeparator(
                                        color: ConstColor.primaryColor
                                            .withOpacity(0.4),
                                        height: 2,
                                      ),
                                    ),
                                    Expanded(
                                        flex: 7,
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 18),
                                          width: 80.w,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              ChoiceButton(
                                                  text: 'Bulk Booking',
                                                  theme: theme,
                                                  isShowOutline: true,
                                                  isActive: false),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              ChoiceButton(
                                                  text: 'Quick Booking',
                                                  theme: theme,
                                                  isShowOutline: true,
                                                  isActive: true),
                                            ],
                                          ),
                                        ))
                                  ],
                                ),
                                decoration: BoxDecoration(
                                    // color: Colors.red,
                                    image: DecorationImage(
                                        image: AssetImage(
                                          'assets/images/home_shape.png',
                                        ),
                                        fit: BoxFit.fill),
                                    borderRadius: BorderRadius.circular(20.0),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 5,
                                        blurRadius: 10,
                                        offset: Offset(
                                            0, 5), // changes position of shadow
                                      )
                                    ]),
                              )),
                        ),
                        Container(
                          height: 20.h,
                          alignment: Alignment.topCenter,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 2.7.h,
                              ),
                              contentPadding(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Nearby Courts',
                                      style: theme.textTheme.subtitle1
                                          ?.copyWith(
                                              color: ConstColor.darkColor,
                                              fontWeight: FontWeight.w700),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        BDMNavigator.state
                                            ?.pushNamed('/nearby_courts');
                                      },
                                      child: Text(
                                        'See all',
                                        style: theme.textTheme.bodyText2
                                            ?.copyWith(
                                                color: ConstColor.darkColor),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 2.h,
                              ),
                              Expanded(child: nearByCourt(theme))
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }

  Widget nearByCourt(ThemeData theme) {
    List data = [
      'https://im.whatshot.in/img/2018/Oct/pdmba-cropped-2-1539107322.jpg',
      'https://www.playspots.in/wp-content/uploads/2019/12/F3-Shuttle-Court-Odumbra.jpg',
      'https://res-4.cloudinary.com/gll/image/upload/c_fit,f_auto,h_391,w_1280/v1562110807/Badminton.jpg',
      'https://www.playspots.in/wp-content/uploads/2019/12/F3-Shuttle-Court-Odumbra.jpg',
      'https://im.whatshot.in/img/2018/Oct/pdmba-cropped-2-1539107322.jpg',
      'https://www.playspots.in/wp-content/uploads/2019/12/F3-Shuttle-Court-Odumbra.jpg',
    ];

    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: data.length,
        itemBuilder: (context, index) {
          return Stack(
            children: [
              Container(
                height: 25.h,
                margin: EdgeInsets.only(
                    right: data.length - 1 == index ? 15 : 2,
                    left: index == 0 ? 15 : 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Card(
                    shadowColor: Colors.grey.shade50.withOpacity(0.2),
                    elevation: 2,
                    child: Stack(
                      children: [
                        Container(
                          width: 80.w,
                          padding: EdgeInsets.only(right: 10),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 3,
                                child: Container(
                                  height: 10.5.h,
                                  padding: EdgeInsets.only(right: 6, left: 6),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Image.network(
                                      data[index],
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                  flex: 6,
                                  child: Container(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Row(
                                          children: [
                                            Expanded(
                                                flex: 7,
                                                child: Text(
                                                  'Indoor Stadium',
                                                  maxLines: 1,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style:
                                                      theme.textTheme.subtitle1,
                                                )),
                                            Expanded(
                                                flex: 3,
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                  child: Container(
                                                    height: 26,
                                                    alignment: Alignment.center,
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 7),
                                                    color:
                                                        ConstColor.splashColor,
                                                    child: Text(
                                                      '230 m.',
                                                      style: theme
                                                          .textTheme.caption
                                                          ?.copyWith(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              color: ConstColor
                                                                  .primaryColor),
                                                    ),
                                                  ),
                                                ))
                                          ],
                                        ),
                                        Text(
                                          'M78Q+vw6, Mandi Gobindgarh, pubjab 147301',
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: theme.textTheme.caption,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Expanded(
                                              flex: 11,
                                              child: Text(
                                                'Available today',
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                    fontSize: 12.4,
                                                    color: colorFromHex(
                                                        '#74D345')),
                                              ),
                                            ),
                                            Expanded(
                                              flex: 8,
                                              child: Row(
                                                children: [
                                                  Text(
                                                    '\u{20B9} 150',
                                                    style: theme
                                                        .textTheme.subtitle2
                                                        ?.copyWith(
                                                            fontSize: 16),
                                                  ),
                                                  Text('/hour')
                                                ],
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ))
                            ],
                          ),
                        ),
                        Positioned(
                          left: 0,
                          top: -2.3,
                          child: SizedBox(
                            child: Stack(
                              children: [
                                Container(
                                  child: Image.asset(
                                      'assets/images/rate_background.png'),
                                  height: 30,
                                  width: 30,
                                ),
                                Positioned(
                                  left: 1.2,
                                  top: 6,
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                        size: 10,
                                      ),
                                      Text(
                                        '4.9',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10,
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        });
  }

  Widget contentPadding({required Widget child}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: child,
    );
  }
}
