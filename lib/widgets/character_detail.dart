import 'package:dragon_ball_app_ui/contants.dart';
import 'package:dragon_ball_app_ui/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CharacterDetail extends HookWidget {
  const CharacterDetail({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final character = useProvider(characterSelectedStateProvider).state;
    return Container(
      height: MediaQuery.of(context).size.height / 1.8,
      margin: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            child: Image(
              height: 260,
              image: AssetImage(character.imgPath),
            ),
          ),
          Text(
            character.race,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: yellowColor,
            ),
          ),
          Text(
            character.name,
            style: const TextStyle(
              fontSize: 60,
              fontWeight: FontWeight.w800,
              color: Colors.white,
            ),
          ),
          Text(
            character.bio,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 15)
        ],
      ),
    );
  }
}
