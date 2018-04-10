import 'package:flutter/material.dart';

/// 讓轉場動畫變成由左至右進入/由右至左退場
class SlideMaterialPageRoute extends MaterialPageRoute<Null> {
  SlideMaterialPageRoute({
    WidgetBuilder builder,
    RouteSettings settings: const RouteSettings(),
  })
      : super(builder: builder, settings: settings);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    return new SlideTransition(
        position:
            new Tween<Offset>(begin: const Offset(1.0, 0.0), end: Offset.zero)
                .animate(animation),
        child: child);
  }
}
