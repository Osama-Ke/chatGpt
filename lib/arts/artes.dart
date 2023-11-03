import 'package:flutter/cupertino.dart';

class TopSharpClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size ) {
    final path = Path() ;
    path.moveTo(size.width, 0);
    path.lineTo(size.width, size.height) ;
    path.lineTo(0, 0) ;
    path.close();
    return path ;
  }
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false ;
  }

}