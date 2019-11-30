import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  MyButton({this.icon, this.onPressed});
  final IconData icon;
  final onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: RawMaterialButton(
        elevation: 10.0,
        disabledElevation: 2,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        fillColor: Colors.blue,
        constraints: BoxConstraints(
          minHeight: 80,
          minWidth: 80.0,
        ),
        onPressed: onPressed,
        child: Icon(
          icon,
          size: 40,
        ),
      ),
    );
  }
}
