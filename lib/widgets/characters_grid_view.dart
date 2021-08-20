import 'package:dragon_ball_app_ui/models/character_model.dart';
import 'package:flutter/material.dart';

import 'character_card.dart';

class CharactersGridView extends StatelessWidget {
  const CharactersGridView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final characters = CharacterModel.getCharacters();
    return Container(
      height: 500,
      color: Colors.transparent,
      padding: EdgeInsets.only(top: 30),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: GridView.count(
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          crossAxisCount: 3,
          children: characters
              .map<Widget>((character) => CharacterCard(character: character))
              .toList(),
        ),
      ),
    );
  }
}