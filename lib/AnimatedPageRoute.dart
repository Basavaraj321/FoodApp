import 'package:flutter/material.dart';

class AnimatedPageRoute extends PageRouteBuilder {
  Widget widget;

  AnimatedPageRoute({required this.widget})
      : super(
            transitionDuration: Duration(milliseconds: 500),
            transitionsBuilder: (BuildContext context,
                Animation<double> animation,
                Animation<double> secAnimation,
                Widget child) {
              animation:
              CurvedAnimation(parent: animation, curve: Curves.easeInCubic);
              return ScaleTransition(
                alignment: Alignment.center,
                scale: animation,
                child: child,
              );
            },
            pageBuilder: (BuildContext context, Animation<double> animation,
                Animation<double> secAnimation) {
              return widget;
            });
}
