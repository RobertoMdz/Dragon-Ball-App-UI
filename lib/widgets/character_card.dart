import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../contants.dart';
import '../models/character_model.dart';
import '../providers.dart';

class CharacterCard extends StatelessWidget {
  final CharacterModel character;
  const CharacterCard({Key key, @required this.character}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: const BorderRadius.all(
        Radius.circular(10),
      ),
      onTap: () {
        _setSelectedCharacter(context);
      },
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 5),
              Container(
                height: 85,
                width: 85,
                decoration: const BoxDecoration(
                  color: orangeColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 5),
              Text(character.name)
            ],
          ),
          Positioned(
            top: 5,
            child: Image(
              width: 100,
              height: 100,
              image: AssetImage(character.imgPath),
            ),
          )
        ],
      ),
    );
  }

  void _setSelectedCharacter(BuildContext context) {
    context.read(characterSelectedStateProvider).state = character;
  }
}
