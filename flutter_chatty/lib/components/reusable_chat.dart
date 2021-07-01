import 'package:flutter/material.dart';
import 'package:flutter_chatty/constant.dart';

class ReusableChatCard extends StatelessWidget {
  ReusableChatCard(
      {this.imageUrl, this.name, this.chat, this.time, this.bold = false});

  final imageUrl, name, chat, time;

  final bool bold;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Row(
        children: [
          Image.asset(
            imageUrl,
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
                name,
                style: kTitleTextStyle,
              ),
              Text(
                chat,
                style: (bold == true) ? kNowChatTextStyle : kChatTextStyle,
              )
            ],
          ),
          Spacer(),
          Text(
            time,
            style: kSubChatTextStyle,
          ),
        ],
      ),
    );
  }
}
