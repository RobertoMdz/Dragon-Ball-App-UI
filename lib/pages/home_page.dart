import 'package:dragon_ball_app_ui/widgets/character_detail.dart';
import 'package:dragon_ball_app_ui/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

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
              SizedBox(height: 15),
              CharacterDetail()
            ],
          ),
        ),
      ),
    );
  }
}
