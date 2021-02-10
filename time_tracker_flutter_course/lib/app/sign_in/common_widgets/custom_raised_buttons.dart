import 'package:flutter/material.dart';

class CustomRaisedButton extends StatelessWidget {
  CustomRaisedButton({
    this.child,
    this.color,
    this.borderRaidus: 2.0,
    this.height: 50.0,
    this.onPressed
  }) :assert(borderRaidus!=null);
  final Widget child;
  final Color color;
  final double borderRaidus;
  final double height;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.0,
      child: RaisedButton(
        child: child,
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(borderRaidus)),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
