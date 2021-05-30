import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../size_config.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key key,
    this.size = 64,
    @required this.icon,
    @required this.iconColor,
    @required this.color,
    @required this.onPressed,
    this.label,
  }) : super(key: key);

  final double size;
  final String icon;
  final Color color, iconColor;
  final VoidCallback onPressed;
  final String label;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenHeight(size),
      width: getProportionateScreenWidth(size),
      child: FlatButton(
        padding: EdgeInsets.all((16 / 64) * size),
        color: color,
        shape: CircleBorder(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(icon, color: iconColor),
            Spacer(),
            Text(label),
          ],
        ),
        onPressed: onPressed,
      ),
    );
  }
}
