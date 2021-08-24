import 'package:flutter/material.dart';

import '../models/character_model.dart';
import 'character_card.dart';
import 'characters_grid_view.dart';
import 'custom_elevated_button.dart';

class BottomCharacterList extends StatelessWidget {
  const BottomCharacterList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final characters = CharacterModel.getCharacters().getRange(1, 7).toList();
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
                  return Row(
                    children: [
                      CharacterCard(character: characters[index]),
                      const SizedBox(width: 10)
                    ],
                  );
                },
              ),
            ),
            CustomElevatedButton(
              onPressed: () {
                _showModalBottomSheet(context);
              },
            )
          ],
        ),
      ),
    );
  }

  void _showModalBottomSheet(BuildContext context) {
    showModalBottomSheet<dynamic>(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      builder: (_) => const CharactersGridView(),
    );
  }
}
