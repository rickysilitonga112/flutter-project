import 'package:flutter/material.dart';
import 'package:monitoring_pbl/constants.dart';
import 'package:monitoring_pbl/components/reusable_input.dart';
import 'package:monitoring_pbl/components/reusable_button.dart';
import 'package:monitoring_pbl/pages/room_screen.dart';

class LoginScreen extends StatelessWidget {
  static const String id = 'login_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset('assets/images/bg.jpg'),
            SizedBox(
              height: 30,
            ),
            Text(
              'Blitz Hotel',
              style: kTitleTextStyle,
            ),
            SizedBox(
              height: 20.0,
            ),
            ReusableInput(
              inputHint: 'Masukkan Username',
            ),
            SizedBox(
              height: 8,
            ),
            ReusableInput(
              inputHint: 'Masukkan password',
              isPassword: true,
            ),
            SizedBox(
              height: 30,
            ),
            ReusableButton(
              buttonText: 'Login',
              onPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return RoomScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
