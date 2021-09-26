import 'package:flutter/material.dart';

class MessageBubbleBottomSnip extends StatelessWidget {
  const MessageBubbleBottomSnip({
    Key? key,
    required this.alignment,
    this.snipCenter = false,
  }) : super(key: key);

  final Alignment alignment;

  final bool snipCenter;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.7,
        padding: EdgeInsets.only(
          bottom: 20,
          left: 0,
          right: 0,
        ),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(
                bottom: 5,
                left: 8,
              ),
              margin: EdgeInsets.only(
                right: (alignment == Alignment.bottomRight) ? 5 : 0,
                left: (alignment != Alignment.bottomRight) ? 5 : 0,
                bottom: 10,
              ),
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Title",
                          style: TextStyle(color: Colors.white),
                        ),
                        Icon(
                          Icons.close,
                          color: Colors.white,
                          size: 20,
                        )
                      ],
                    ),
                    Container(
                      height: 100,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              transform: Matrix4.translationValues(0, -28.0, 0),
              child: Align(
                alignment: snipCenter
                    ? Alignment.center
                    : (alignment == Alignment.bottomRight)
                        ? Alignment.bottomLeft
                        : Alignment.bottomRight,
                child: Padding(
                  padding: (alignment == Alignment.bottomRight)
                      ? const EdgeInsets.only(left: 8.0)
                      : const EdgeInsets.only(right: 28.0),
                  child: Column(
                    children: [
                      Icon(
                        Icons.arrow_drop_down,
                        color: Colors.blue,
                        size: 40,
                      ),
                      Container(
                        transform: Matrix4.translationValues(0, -22.0, 0),
                        child: Icon(
                          Icons.more_horiz,
                          color: Colors.black87,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
