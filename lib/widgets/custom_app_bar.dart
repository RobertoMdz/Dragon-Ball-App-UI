import 'package:drawer_swipe/drawer_swipe.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../contants.dart';

class CustomAppBar extends StatelessWidget {
  final GlobalKey<SwipeDrawerState> drawerKey;
  const CustomAppBar({Key key, @required this.drawerKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 6, right: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: SvgPicture.asset(
              'assets/menu.svg',
              color: Colors.white,
              width: 35,
              height: 35,
            ),
            onPressed: () {
              if (drawerKey.currentState.isOpened()) {
                drawerKey.currentState.closeDrawer();
              } else {
                drawerKey.currentState.openDrawer();
              }
            },
          ),
          const Image(
            image: AssetImage('assets/logo.png'),
            width: 160,
            height: 60,
          ),
          const CircleAvatar(
            backgroundColor: purpleColor,
            child: Image(
              width: 30,
              height: 30,
              image: AssetImage('assets/avatar.png'),
            ),
          )
        ],
      ),
    );
  }
}
