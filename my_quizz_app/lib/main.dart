import 'package:flutter/material.dart';
import 'constant.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xff393b46),
        backgroundColor: Color(0xff393b46),
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text('test'),
          ),
          body: SafeArea(
            child: Container(
              padding: EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Center(
                        child: Text(
                          'This questions bla blabla blalalala',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 26.0),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Expanded(
                      child: ReusableButton(
                        text: 'TRUE',
                        background: Colors.green,
                        onPress: () {},
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Expanded(
                        child: ReusableButton(
                      text: 'FALSE',
                      onPress: () {},
                      background: Colors.red,
                    )),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}

class ReusableButton extends StatelessWidget {
  ReusableButton({this.text, this.onPress, this.background});

  final text;
  final onPress;
  final background;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text(
        text,
        style: kButtonTextStyle,
      ),
      style: TextButton.styleFrom(backgroundColor: background),
      onPressed: onPress,
    );
  }
}
