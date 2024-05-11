
import 'package:flutter/cupertino.dart';

class SlideRiht extends PageRouteBuilder {
  final Widget page;


  SlideRiht({required this.page})
      : super(
      pageBuilder: (context, animation, animationtow) => page,
      transitionsBuilder: (context, animation, animationtwo, child) {
        Offset pegin = Offset(0, 1) ;
        Offset end = Offset(0, 0) ;
        var tween = Tween(begin: pegin , end: end) ;
        var cursevanimation = CurvedAnimation(parent: animation, curve: Curves.linear) ;
        return SlideTransition(

          position: tween.animate(cursevanimation) ,child: child,);
      });
}
