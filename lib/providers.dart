import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'models/character_model.dart';

final characterSelectedStateProvider = StateProvider<CharacterModel>((ref) {
  return CharacterModel.getCharacters().first;
});
