import 'package:flutter/material.dart';

class DashedLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double dashWidth = 9, dashSpace = 5, startX = 0;
    final paint = Paint()
      ..color = Colors.grey
      ..strokeWidth = 1;
    while (startX < size.width) {
      canvas.drawLine(Offset(startX, 0), Offset(startX + dashWidth, 0), paint);
      startX += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

class MySeparator extends StatelessWidget {
  final double height;
  final Color color;
  final bool? isVertical;

  const MySeparator(
      {this.height = 1, this.color = Colors.black, this.isVertical = false});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final boxWidth = constraints.constrainWidth();
        final boxHeight = constraints.constrainHeight();
        final dashWidth = 10.0;
        final dashHeight = height;
        final dashCount =
            isVertical == true ? 5 : (boxWidth / (2 * dashWidth)).floor();
        return Flex(
          children: List.generate(dashCount, (_) {
            return SizedBox(
              width: isVertical == true ? dashHeight : dashWidth,
              height: isVertical == true ? dashWidth : dashHeight,
              child: DecoratedBox(
                decoration: BoxDecoration(color: color),
              ),
            );
          }),
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: isVertical == true ? Axis.vertical : Axis.horizontal,
        );
      },
    );
  }
}
