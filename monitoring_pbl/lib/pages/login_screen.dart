import 'package:flutter/material.dart';
import 'package:monitoring_pbl/constants.dart';
import 'package:monitoring_pbl/components/header.dart';

class LoginScreen extends StatelessWidget {
  static const String id = 'login_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Header(),
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
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                'Login',
              ),
              style: ElevatedButton.styleFrom(
                primary: kPrimaryColor,
                textStyle: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ReusableInput extends StatelessWidget {
  final String inputHint;
  final bool isPassword;

  ReusableInput({
    required this.inputHint,
    this.isPassword: false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: TextField(
        obscureText: isPassword,
        textAlign: TextAlign.center,
        onChanged: (value) {},
        decoration: kTextFieldDecoration.copyWith(
          hintText: inputHint,
        ),
        style: TextStyle(color: Colors.black87),
      ),
    );
  }
}
