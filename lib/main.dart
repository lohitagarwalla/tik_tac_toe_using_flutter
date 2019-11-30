import 'package:flutter/material.dart';
import 'button_model.dart';
import 'button_widget.dart';
import 'calculations.dart';

var backgroundColor = Colors.blue.shade50;
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trick_tac_toe',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Calculations calculations = Calculations();

  void function1(ButtonModel button) {
    if (button.pressed == false && calculations.won == false) {
      setState(() {
        button.pressed = true;
        if (calculations.user == 1) {
          button.markedAs = calculations.zero;
          button.icon = Icons.panorama_fish_eye;
        } else {
          button.markedAs = calculations.cross;
          button.icon = Icons.clear;
        }
      });
      calculations.user = (calculations.user == 1) ? 2 : 1;
    }
  }

  @override
  Widget build(BuildContext context) {
    print(calculations.whoWon());
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Trick Tac Toe'),
        ),
        backgroundColor: backgroundColor,
        body: Column(
//          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                MyButton(
                    icon: calculations.button1.icon,
                    onPressed: () {
                      function1(calculations.button1);
                    }),
                MyButton(
                    icon: calculations.button2.icon,
                    onPressed: () {
                      function1(calculations.button2);
                    }),
                MyButton(
                    icon: calculations.button3.icon,
                    onPressed: () {
                      function1(calculations.button3);
                    }),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                MyButton(
                    icon: calculations.button4.icon,
                    onPressed: () {
                      function1(calculations.button4);
                    }),
                MyButton(
                    icon: calculations.button5.icon,
                    onPressed: () {
                      function1(calculations.button5);
                    }),
                MyButton(
                    icon: calculations.button6.icon,
                    onPressed: () {
                      function1(calculations.button6);
                    }),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                MyButton(
                    icon: calculations.button7.icon,
                    onPressed: () {
                      function1(calculations.button7);
                    }),
                MyButton(
                    icon: calculations.button8.icon,
                    onPressed: () {
                      function1(calculations.button8);
                    }),
                MyButton(
                    icon: calculations.button9.icon,
                    onPressed: () {
                      function1(calculations.button9);
                    }),
              ],
            ),
            calculations.whoWon() == null
                ? SizedBox(
                    height: 80.0,
                  )
                : (calculations.whoWon() == calculations.cross ||
                        calculations.whoWon() == calculations.zero)
                    ? Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              '${calculations.whoWon().toString().toUpperCase()} Won',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          RaisedButton(
                            elevation: 10.0,
                            color: Colors.blue,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Restart',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0),
                              ),
                            ),
                            onPressed: () {
                              setState(() {
                                calculations.user = 1;
                                calculations.won = false;
                                calculations.button1.restart();
                                calculations.button2.restart();
                                calculations.button3.restart();
                                calculations.button4.restart();
                                calculations.button5.restart();
                                calculations.button6.restart();
                                calculations.button7.restart();
                                calculations.button8.restart();
                                calculations.button9.restart();
                              });
                            },
                          )
                        ],
                      )
                    : (calculations.whoWon() == calculations.draw
                        ? Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '${calculations.whoWon().toString().toUpperCase()}',
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              RaisedButton(
                                elevation: 10.0,
                                color: Colors.blue,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Restart',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0),
                                  ),
                                ),
                                onPressed: () {
                                  setState(() {
                                    calculations.user = 1;
                                    calculations.won = false;
                                    calculations.button1.restart();
                                    calculations.button2.restart();
                                    calculations.button3.restart();
                                    calculations.button4.restart();
                                    calculations.button5.restart();
                                    calculations.button6.restart();
                                    calculations.button7.restart();
                                    calculations.button8.restart();
                                    calculations.button9.restart();
                                  });
                                },
                              )
                            ],
                          )
                        : SizedBox(
                            height: 80.0,
                          )),
          ],
        ),
      ),
    );
  }
}
