import 'package:flutter/material.dart';
import 'package:insta_clone2/constants/common_size.dart';

class ProfileBody extends StatefulWidget {
  @override
  _ProfileBodyState createState() => _ProfileBodyState();
}

class _ProfileBodyState extends State<ProfileBody> {
  bool selectedLeft = true;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              [
                _username(),
                _userBio(),
                _editProfileBtn(),
                Row(
                  children: [
                    Expanded(
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            selectedLeft = true;
                          });
                        },
                        icon: ImageIcon(
                          AssetImage(
                            'assets/images/grid.png',
                          ),
                          color: selectedLeft ? Colors.black : Colors.black26,
                        ),
                      ),
                    ),
                    Expanded(
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            selectedLeft = false;
                          });
                        },
                        icon: ImageIcon(
                          AssetImage(
                            'assets/images/saved.png',
                          ),
                          color: selectedLeft ? Colors.black26 : Colors.black,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Padding _editProfileBtn() {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: common_gap, vertical: common_xxs_gap),
      child: SizedBox(
        height: 24,
        child: OutlinedButton(
            onPressed: null,
            style: OutlinedButton.styleFrom(
                side: BorderSide(color: Colors.black45),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6))),
            child: Text(
              'Edit Profile',
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
      ),
    );
  }

  Widget _username() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: common_gap),
      child: Text(
        'Username_area',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _userBio() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: common_gap),
      child: Text(
        '모든 국민은 직업선택의 자유를 가진다.',
        style: TextStyle(
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
