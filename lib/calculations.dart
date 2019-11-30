import 'button_model.dart';

class Calculations {
  String cross = 'cross';
  String zero = 'zero';
  String draw = 'draw';
  bool won = false;
  int user = 1;

  ButtonModel button1 = ButtonModel();
  ButtonModel button2 = ButtonModel();
  ButtonModel button3 = ButtonModel();
  ButtonModel button4 = ButtonModel();
  ButtonModel button5 = ButtonModel();
  ButtonModel button6 = ButtonModel();
  ButtonModel button7 = ButtonModel();
  ButtonModel button8 = ButtonModel();
  ButtonModel button9 = ButtonModel();

  String whoWon() {
    if (button1.markedAs == zero &&
        button2.markedAs == zero &&
        button3.markedAs == zero) {
      won = true;
      return zero;
    } else if (button4.markedAs == zero &&
        button5.markedAs == zero &&
        button6.markedAs == zero) {
      won = true;
      return zero;
    } else if (button7.markedAs == zero &&
        button8.markedAs == zero &&
        button9.markedAs == zero) {
      won = true;
      return zero;
    } else if (button1.markedAs == zero &&
        button4.markedAs == zero &&
        button7.markedAs == zero) {
      won = true;
      return zero;
    } else if (button2.markedAs == zero &&
        button5.markedAs == zero &&
        button8.markedAs == zero) {
      won = true;
      return zero;
    } else if (button3.markedAs == zero &&
        button6.markedAs == zero &&
        button9.markedAs == zero) {
      won = true;
      return zero;
    } else if (button1.markedAs == zero &&
        button5.markedAs == zero &&
        button9.markedAs == zero) {
      won = true;
      return zero;
    } else if (button3.markedAs == zero &&
        button5.markedAs == zero &&
        button7.markedAs == zero) {
      won = true;
      return zero;
    }
    // for cross
    else if (button1.markedAs == cross &&
        button2.markedAs == cross &&
        button3.markedAs == cross) {
      won = true;
      return cross;
    } else if (button4.markedAs == cross &&
        button5.markedAs == cross &&
        button6.markedAs == cross) {
      won = true;
      return cross;
    } else if (button7.markedAs == cross &&
        button8.markedAs == cross &&
        button9.markedAs == cross) {
      won = true;
      return cross;
    } else if (button1.markedAs == cross &&
        button4.markedAs == cross &&
        button7.markedAs == cross) {
      won = true;
      return cross;
    } else if (button2.markedAs == cross &&
        button5.markedAs == cross &&
        button8.markedAs == cross) {
      won = true;
      return cross;
    } else if (button3.markedAs == cross &&
        button6.markedAs == cross &&
        button9.markedAs == cross) {
      won = true;
      return cross;
    } else if (button1.markedAs == cross &&
        button5.markedAs == cross &&
        button9.markedAs == cross) {
      won = true;
      return cross;
    } else if (button3.markedAs == cross &&
        button5.markedAs == cross &&
        button7.markedAs == cross) {
      won = true;
      return cross;
    } else if (button1.markedAs != null &&
        button2.markedAs != null &&
        button3.markedAs != null &&
        button4.markedAs != null &&
        button5.markedAs != null &&
        button6.markedAs != null &&
        button7.markedAs != null &&
        button8.markedAs != null &&
        button9.markedAs != null) {
      return draw;
    } else {
      return 'keep playing';
    }
  }
}
