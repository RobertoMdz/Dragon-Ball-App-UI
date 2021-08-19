import 'package:dragon_ball_app_ui/models/character_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final characterSelectedStateProvider = StateProvider<CharacterModel>((ref) {
  return CharacterModel.getCharacters().first;
});
