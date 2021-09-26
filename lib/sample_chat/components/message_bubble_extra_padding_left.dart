import 'package:flutter/material.dart';

class MessageBubbleExtraPaddingLeft extends StatelessWidget {
  const MessageBubbleExtraPaddingLeft({
    Key? key,
    required this.alignment,
    this.snipCenter = false,
    required this.paddingLeft,
  }) : super(key: key);

  final Alignment alignment;

  final bool snipCenter;

  final double paddingLeft;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.7,
        margin: EdgeInsets.only(
          bottom: 20,
          left: paddingLeft,
          right: 0,
        ),
        child: Column(
          children: [
            Container(
              transform: Matrix4.translationValues(0, 17.0, 0),
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
                      Container(
                        transform: Matrix4.translationValues(0, 17.0, 0),
                        child: Icon(
                          Icons.more_horiz,
                          color: Colors.black87,
                          size: 30,
                        ),
                      ),
                      Icon(
                        Icons.arrow_drop_up,
                        color: Colors.blue,
                        size: 40,
                      ),
                    ],
                  ),
                ),
              ),
            ),
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
          ],
        ),
      ),
    );
  }
}
