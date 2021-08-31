import 'package:flutter/material.dart';
import 'package:insta_clone2/constants/common_size.dart';
import 'package:insta_clone2/widgets/profile_body.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _appbar(),
            ProfileBody(),
          ],
        ),
      ),
    );
  }

  Row _appbar() {
    return Row(
      children: [
        SizedBox(
          width: 44,
        ),
        Expanded(
          child: Text(
            'Flutterkage2k',
            textAlign: TextAlign.center,
          ),
        ),
        IconButton(onPressed: null, icon: Icon(Icons.menu))
      ],
    );
  }
}
