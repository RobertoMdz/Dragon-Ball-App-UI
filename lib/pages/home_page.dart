import 'package:flutter/material.dart';

import '../widgets/bottom_character_list.dart';
import '../widgets/character_detail.dart';
import '../widgets/custom_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
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
            children: const [
              CustomAppBar(),
              CharacterDetail(),
              BottomCharacterList()
            ],
          ),
        ),
      ),
    );
  }
}
