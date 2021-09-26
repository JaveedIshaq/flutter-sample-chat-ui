import 'package:flutter/material.dart';

class UserMessageBubble extends StatelessWidget {
  const UserMessageBubble({
    Key? key,
    required this.messageText,
  }) : super(key: key);

  final String messageText;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Row(
        children: [
          SizedBox(width: 10),
          Container(
            width: MediaQuery.of(context).size.width * 0.5,
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
            margin: EdgeInsets.only(right: 20, bottom: 10),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(15),
            ),
            child: Text(
              messageText,
              style: TextStyle(color: Colors.black87),
            ),
          ),
        ],
      ),
    );
  }
}
