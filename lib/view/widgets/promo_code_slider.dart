import 'package:badminton/core/providers/carsoul.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class PromocodeSlider extends StatelessWidget {
  PromocodeSlider({Key? key}) : super(key: key);
  List data = [1, 2, 3, 5, 6, 7, 34, 34, 34, 34];

  Widget promoCodeContainer({bool isFirst = false}) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
                'https://im.whatshot.in/img/2018/Oct/pdmba-cropped-2-1539107322.jpg'),
            fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(10),
        // color: Colors.red,
      ),
      margin: EdgeInsets.only(right: 10, left: isFirst ? 15 : 0),
    );
  }

  Widget promoCodePoint(bool isActive) {
    return Container(
      height: 7,
      width: 7,
      margin: EdgeInsets.only(right: 3),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isActive ? Colors.white : Colors.white54,
      ),
      padding: isActive ? EdgeInsets.only(right: 40) : EdgeInsets.all(10),
    );
  }

  @override
  Widget build(BuildContext context) {
    CarsoulProvider _provider = Provider.of<CarsoulProvider>(context);
    return Column(
      children: [
        CarouselSlider(
            options: CarouselOptions(
                autoPlay: false,
                viewportFraction: 0.97,
                enlargeCenterPage: true,
                aspectRatio: 3.5,
                onPageChanged: (index, reason) {
                  _provider.updateIndex(index);
                }),
            items: data.map((e) => promoCodeContainer(isFirst: true)).toList()),
        Container(
          alignment: Alignment.bottomCenter,
          padding: EdgeInsets.symmetric(vertical: 10.0),
          // color: Colors.yellow,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: data
                  .asMap()
                  .entries
                  .map((e) => promoCodePoint(e.key == _provider.currentIndex))
                  .toList()),
        )
      ],
    );
  }
}
