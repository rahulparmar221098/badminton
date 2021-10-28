import 'package:flutter/material.dart';

class StatefulWrapper extends StatefulWidget {
  final VoidCallback? onInit, dipose;
  final Widget child;

  const StatefulWrapper(
      {Key? key, this.onInit, this.dipose, required this.child})
      : super(key: key);

  @override
  _StatefulWrapperState createState() => _StatefulWrapperState();
}

class _StatefulWrapperState extends State<StatefulWrapper> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // !widget!.onInit();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: widget.child);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}
