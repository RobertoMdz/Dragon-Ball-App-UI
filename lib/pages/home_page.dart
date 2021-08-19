import 'package:dragon_ball_app_ui/widgets/custom_drawer_menu.dart';
import 'package:drawer_swipe/drawer_swipe.dart';
import 'package:flutter/material.dart';

import '../widgets/bottom_character_list.dart';
import '../widgets/character_detail.dart';
import '../widgets/custom_app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var drawerKey = GlobalKey<SwipeDrawerState>();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: SwipeDrawer(
        radius: 25,
        key: drawerKey,
        bodyBackgroundPeekSize: -20,
        backgroundColor: const Color.fromRGBO(239, 78, 16, 1),
        drawer: const CustomDrawerMenu(),
        child: Container(
          width: size.width,
          height: size.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/background.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: SafeArea(
            child: Column(
              children: [
                CustomAppBar(drawerKey: drawerKey),
                const CharacterDetail(),
                const BottomCharacterList()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
