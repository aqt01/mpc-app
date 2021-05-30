import 'package:flutter/material.dart';

import 'package:mpc_app/size_config.dart';

class DrawTriangle extends CustomPainter {
  final Color backgroundColor;

  DrawTriangle({
    @required this.backgroundColor,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = backgroundColor;
    final path = Path();

    path
      ..moveTo(0, 0)
      ..lineTo(SizeConfig.screenWidth, 0)
      ..lineTo(SizeConfig.screenWidth, getProportionateScreenHeight(70))
      ..lineTo(0, getProportionateScreenHeight(200));

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
