import 'package:flutter/material.dart';

class SlideAnimation extends StatelessWidget {
  final Widget animationChild;
  final double paddingValue;
  final int durationInMS;
  SlideAnimation(
      {@required this.animationChild,
      this.paddingValue,
      @required this.durationInMS});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      duration: Duration(milliseconds: durationInMS),
      tween: Tween<double>(begin: 0, end: 1),
      builder: (BuildContext context, double _value, Widget _child) {
        _child = this.animationChild;
        return Opacity(
          opacity: _value,
          child: Padding(
              padding: EdgeInsets.only(left: _value * paddingValue),
              child: _child),
        );
      },
    );
  }
}
