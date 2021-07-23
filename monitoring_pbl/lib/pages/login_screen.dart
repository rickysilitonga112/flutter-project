import 'package:flutter/material.dart';
import 'package:monitoring_pbl/constants.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset('assets/images/bg.jpg'),
          Container(
            padding: EdgeInsets.fromLTRB(24.0, 12.0, 24.0, 12.0),
            color: kNavbarColor,
            width: double.infinity,
            child: Row(
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.home,
                      size: 35.0,
                      color: kNavbarTextColor,
                    ),
                    Text('Home', style: kNavbarTextStyle)
                  ],
                ),
                SizedBox(
                  width: 16.0,
                ),
                Column(
                  children: [
                    Icon(
                      Icons.logout,
                      size: 35.0,
                      color: kNavbarTextColor,
                    ),
                    Text('Logout', style: kNavbarTextStyle)
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Text(
            'Blitz Hotel',
            style: kTitleTextStyle,
          ),
          SizedBox(
            height: 12.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Row(
              children: [
                Text(
                  'Username',
                  style: kInputTextStyle,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
