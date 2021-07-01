import 'package:flutter/material.dart';
import 'package:flutter_chatty/constant.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: chatInput(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      backgroundColor: Color(0xffEAEFF3),
      body: SafeArea(
        child: Column(
          children: [
            HeaderChats(),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30.0,
              ),
              child: Column(
                children: [
                  ChattingList(
                    imageUrl: 'assets/images/friend1.png',
                    chatText: 'How are you guys?',
                    time: '2.30',
                  ),
                  ChattingList(
                    imageUrl: 'assets/images/friend2.png',
                    chatText: 'Find here :P',
                    time: '2.31',
                  ),
                  MyChattingList(
                    imageUrl: 'assets/images/profile.png',
                    chatText:
                        'Thinking about how to deal with \nthis client from hell...',
                    time: '2.33',
                  ),
                  ChattingList(
                    imageUrl: 'assets/images/friend3.png',
                    chatText: 'Love them',
                    time: '20.11',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget chatInput() {
  return Container(
    width: 315.0,
    padding: EdgeInsets.all(16.0),
    decoration: BoxDecoration(
      color: Color(0xffFFFFFF),
      borderRadius: BorderRadius.circular(75),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Type message ...',
          textAlign: TextAlign.start,
          style: TextStyle(
              color: Color(0xff999999),
              fontFamily: 'poppins',
              fontWeight: FontWeight.w300),
        ),
        Icon(
          Icons.send,
          size: 35,
        ),
      ],
    ),
  );
}

class MyChattingList extends StatelessWidget {
  final imageUrl;
  final chatText;
  final time;

  MyChattingList({this.imageUrl, this.chatText, this.time});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            width: 295.0,
            padding: EdgeInsets.fromLTRB(20, 11, 20, 11),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
                bottomLeft: Radius.circular(20.0),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  chatText,
                  style: kNowChatTextStyle,
                ),
                Text(
                  time,
                  style: kSubChatTextStyle,
                ),
              ],
            ),
          ),
          SizedBox(
            width: 12.0,
          ),
          Image.asset(
            imageUrl,
            width: 40.0,
            height: 40.0,
          ),
        ],
      ),
    );
  }
}

class ChattingList extends StatelessWidget {
  final imageUrl;
  final chatText;
  final time;

  ChattingList({this.imageUrl, this.chatText, this.time});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: Row(
        children: [
          Image.asset(
            imageUrl,
            width: 40.0,
            height: 40.0,
          ),
          SizedBox(
            width: 12.0,
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 11, 20, 11),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  chatText,
                  style: kNowChatTextStyle,
                ),
                Text(
                  time,
                  style: kSubChatTextStyle,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HeaderChats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30.0),
      width: double.infinity,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadiusDirectional.vertical(
          bottom: Radius.circular(40.0),
        ),
      ),
      child: Row(
        children: [
          Image.asset(
            'assets/images/group1.png',
            width: 55.0,
            height: 55.0,
          ),
          SizedBox(
            width: 12.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Jakarta Fair',
                style: kTitleTextStyle,
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                '14,209 members',
                style: kChatTextStyle,
              ),
            ],
          ),
          Spacer(),
          Image.asset(
            'assets/images/call_btn.png',
            width: 45.0,
            height: 45.0,
          ),
        ],
      ),
    );
  }
}
