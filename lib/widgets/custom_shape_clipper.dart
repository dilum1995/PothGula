import 'package:flutter/material.dart';

class  CustomShapeClipper extends CustomClipper<Path>{
  @override
  getClip(Size size) {

    final Path path = Path();
    path.lineTo(0.0, size.height);

    var firstEndPoint = Offset(size.width*0.5, size.height-30.0);
    var firstControllPoint = Offset(size.width*0.25, size.height-50.0);
    path.quadraticBezierTo(firstControllPoint.dx, firstControllPoint.dy, firstEndPoint.dx, firstEndPoint.dy);

    var secondEndPoint = Offset(size.width, size.height-80.0);
    var secondControllPoint = Offset(size.width*0.75, size.height-10.0);
    path.quadraticBezierTo(secondControllPoint.dx, secondControllPoint.dy, secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) => false;

}