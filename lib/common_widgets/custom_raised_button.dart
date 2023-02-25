import 'package:flutter/material.dart';

class CustomRaisedButton extends StatelessWidget {
  CustomRaisedButton(
      {@required this.color,
      @required this.child,
      this.borderRad = 100.0,
      @required this.onPressed});
  final Widget child;
  final Color color;
  final double borderRad;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.0,
      child: RaisedButton(
        onPressed: onPressed,
        color: color,
        disabledColor: color,
        child: child,
        elevation: 10.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRad),
        ),
      ),
    );
  }
}
