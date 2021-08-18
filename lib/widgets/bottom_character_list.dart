import 'package:flutter/material.dart';

import '../models/character_model.dart';
import 'character_card.dart';

class BottomCharacterList extends StatelessWidget {
  const BottomCharacterList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final characters = CharacterModel.getCharacters().take(6).toList();
    return Expanded(
      child: Container(
        padding: const EdgeInsets.only(top: 10),
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(25),
            topLeft: Radius.circular(25),
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 140,
              child: ListView.builder(
                padding: const EdgeInsets.only(left: 10),
                shrinkWrap: true,
                itemCount: characters.length,
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return CharacterCard(character: characters[index]);
                },
              ),
            ),
            OutlinedButton(onPressed: () {}, child: Text('VER MAS'))
          ],
        ),
      ),
    );
  }
}
