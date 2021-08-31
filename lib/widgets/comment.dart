import 'package:flutter/material.dart';
import 'package:insta_clone2/constants/common_size.dart';
import 'package:insta_clone2/widgets/rounded_avatar.dart';

class Comment extends StatelessWidget {
  final bool showImage;
  final String username;
  final String commenttext;
  final DateTime? datetime;

  Comment(
      {Key? key,
      this.showImage = true,
      required this.username,
      required this.commenttext,
      this.datetime})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (showImage) RoundedAvatar(size: 24),
        if (showImage) SizedBox(width: common_xxs_gap),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: username,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black87),
                  ),
                  TextSpan(text: '    '),
                  TextSpan(
                    text: commenttext,
                    style: TextStyle(color: Colors.black87),
                  ),
                ],
              ),
            ),
            if (datetime != null)
              Text(
                datetime!.toIso8601String(),
                style: TextStyle(color: Colors.grey[400], fontSize: 10),
              )
          ],
        ),
      ],
    );
  }
}
