import 'package:flutter/material.dart';
import 'components/message_bubble.dart';
import 'components/message_bubble_bottom_snip.dart';
import 'components/message_bubble_extra_padding_left.dart';

class SampleChatView extends StatelessWidget {
  SampleChatView({Key? key}) : super(key: key);

  /// Route Name to be used with Router
  static const String route = '/MessagesView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 40),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  MessageBubble(
                    alignment: Alignment.bottomRight,
                  ),
                  MessageBubble(
                    alignment: Alignment.bottomLeft,
                  ),
                  MessageBubbleExtraPaddingLeft(
                    alignment: Alignment.bottomLeft,
                    snipCenter: true,
                    paddingLeft: 30,
                  ),
                  SizedBox(
                    height: 130,
                  ),
                  MessageBubbleBottomSnip(
                    alignment: Alignment.bottomRight,
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
