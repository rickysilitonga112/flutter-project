import 'package:flutter/material.dart';
import 'package:flutter_chatty/constant.dart';
import 'package:flutter_chatty/components/reusable_chat.dart';
import 'chats.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: greenColor,
        hoverColor: Color(0xff82E9CC),
        child: Icon(
          Icons.add,
          size: 24.0,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 40.0,
                ),
                Image.asset(
                  'assets/images/profile.png',
                  width: 100.0,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  'Sabrina Carpenter',
                  style: kProfileTextStyle,
                ),
                SizedBox(
                  height: 2.0,
                ),
                Text(
                  'Travel Freelancer',
                  style: kSubProfileTextStyle,
                ),
                SizedBox(
                  height: 30.0,
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(30.0),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadiusDirectional.vertical(
                      top: Radius.circular(40.0),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Friends',
                        style: kTitleTextStyle,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Chat()),
                          );
                        },
                        child: ReusableChatCard(
                          imageUrl: 'assets/images/friend1.png',
                          name: 'Joshuer',
                          chat: 'Sorry, you’re not my ty...',
                          time: 'now',
                          bold: true,
                        ),
                      ),
                      ReusableChatCard(
                        imageUrl: 'assets/images/friend2.png',
                        name: 'Gabriella',
                        chat: 'I saw it clearly and mig...',
                        time: '11:11',
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      Text(
                        'Group',
                        style: kTitleTextStyle,
                      ),
                      ReusableChatCard(
                        imageUrl: 'assets/images/group1.png',
                        name: 'Jakarta fair',
                        chat: 'Why does everyone ca...',
                        time: '11:11',
                      ),
                      ReusableChatCard(
                        imageUrl: 'assets/images/group2.png',
                        name: 'Angga',
                        chat: 'Here here we can go...',
                        time: '7:12',
                        bold: true,
                      ),
                      ReusableChatCard(
                        imageUrl: 'assets/images/group3.png',
                        name: 'Behntley',
                        chat: 'The car which does not...',
                        time: '10:00',
                        bold: true,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
