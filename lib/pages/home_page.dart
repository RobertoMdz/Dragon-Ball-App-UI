import 'package:drawer_swipe/drawer_swipe.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../contants.dart';
import '../widgets/bottom_character_list.dart';
import '../widgets/character_detail.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/custom_drawer_menu.dart';

class HomePage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final drawerKey = useState(GlobalKey<SwipeDrawerState>());
    final size = MediaQuery.of(context).size;

    return Scaffold(
      extendBodyBehindAppBar: true,
      body: SwipeDrawer(
        radius: 25,
        key: drawerKey.value,
        bodyBackgroundPeekSize: -20,
        backgroundColor: orangeColor,
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
                CustomAppBar(drawerKey: drawerKey.value),
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
