import 'package:flutter/material.dart';

class ButtonModel {
  bool pressed;
  IconData icon;
  String markedAs;

  ButtonModel() {
    pressed = false;
    icon = null;
    markedAs = null;
  }

  void restart() {
    pressed = false;
    icon = null;
    markedAs = null;
  }
}
