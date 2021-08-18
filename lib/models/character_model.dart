import 'package:equatable/equatable.dart';

class CharacterModel extends Equatable {
  final String id;
  final String race;
  final String name;
  final String bio;
  final String imgPath;

  const CharacterModel({
    required this.id,
    required this.race,
    required this.name,
    required this.bio,
    required this.imgPath,
  });

  @override
  List<Object?> get props => [];

  static List<CharacterModel> getCharacters() {
    return const [
      CharacterModel(
        id: "goku",
        race: "Saiyan",
        name: "Goku",
        bio:
            "Goku, born Kakarot, is a male Saiyan and the main protagonist of the Dragon Ball series. Goku is a Saiyan originally sent to Earth as an infant with the mission to destroy its people. However, an accident alters his memory, allowing him to grow up to become Earth's greatest defender and the informal leader of the Dragon Team. He constantly strives and trains to be the greatest warrior possible, which has kept the Earth and the universe safe from destruction many times.",
        imgPath: "assets/goku.png",
      ),
      CharacterModel(
        id: "vegeta",
        race: "Saiyan",
        name: "Vegeta",
        bio:
            "Vegeta is the Prince of an extraterrestrial race of warriors known as the Saiyans just like the series' protagonist, Goku. Vegeta is extremely vain and proud, constantly referring to his heritage throughout the series. He believes he should be regarded as the strongest fighter in the Universe and becomes obsessed with surpassing Goku after fighting him. After his loss to Goku and the Z fighters, Vegeta later reluctantly unites with the heroes to thwart greater threats to the universe. Throughout the series, Vegeta's role changes from villain to antihero and later as one of the heroes, while remaining a rival to Goku.",
        imgPath: "assets/vegeta.png",
      ),
      CharacterModel(
        id: "gohan",
        race: "Human/Saiyan",
        name: "Gohan",
        bio:
            "Gohan is a fictional character in the Dragon Ball manga series, created by Akira Toriyama. Gohan is introduced as the first son of the protagonist Goku, and his wife Chi-Chi, in chapter #196 Kakarrot, first published in Weekly Shōnen Jump magazine on October 8, 1988. Chi-Chi is a strict and protective mother to Gohan, forcing him to focus on his studies and forbidding him from practicing martial arts. However, due to the various threats to the Earth, she reluctantly allows him to fight, with him ultimately becoming one of the strongest characters in the series.",
        imgPath: "assets/gohan.png",
      ),
      CharacterModel(
        id: "trunks",
        race: "Human/Saiyan",
        name: "Trunks",
        bio:
            "Trunks has his grandfather's lavender hair color (blue in the manga) and his mother's blue eyes. He has his father's eye shape, facial features and tanned skin and his hair turns blond and eyes turn (pupil-less) green when he becomes a Super Saiyan.",
        imgPath: "assets/trunks.png",
      ),
      CharacterModel(
        id: "frieza",
        race: "Unknown",
        name: "Frieza",
        bio:
            "Frieza, romanized as Freeza in Japanese merchandise, Funimation's English subtitles and Viz Media's release of the manga, is a fictional character in the Dragon Ball manga series created by Akira Toriyama.",
        imgPath: "assets/frieza.png",
      ),
      CharacterModel(
        id: "cell",
        race: "Android",
        name: "Cell",
        bio:
            "Cell is the ultimate creation of Dr. Gero, who came from a future timeline, designed to possess all the abilities of the greatest fighters to have ever inhabited or visited Earth;",
        imgPath: "assets/cell.png",
      ),
      CharacterModel(
        id: "buu",
        race: "Majin",
        name: "Buu",
        bio:
            "Majin Buu, generally spelled Majin Boo in subtitles of the Japanese anime, and rendered as Djinn-Boo in the Viz Media manga, is a fictional character and the final antagonist in the Dragon Ball manga series created by Akira Toriyama.",
        imgPath: "assets/buu.png",
      ),
      CharacterModel(
        id: "beerus",
        race: "God",
        name: "Beerus",
        bio:
            "Beerus, the God of Destruction is a character in the Dragon Ball franchise created by Akira Toriyama. Beerus made his first appearance in the 2013 feature film Dragon Ball Z.",
        imgPath: "assets/beerus.png",
      ),
      CharacterModel(
        id: "piccolo",
        race: "Namekian",
        name: "Piccolo",
        bio:
            "Piccolo Jr., usually just called Piccolo also known as Ma Junior, is a Namekian and also the final child and reincarnation of the Demon King Piccolo, later becoming the reunification of the Nameless Namekian after fusing with Kami.",
        imgPath: "assets/piccolo.png",
      ),
      CharacterModel(
        id: "gotenks",
        race: "Human/Saiyan",
        name: "Gotenks",
        bio:
            "Gotenks, previously known as Trunkten, is the immensely powerful result of Trunks and Goten successfully using the Fusion Dance, and the first successful fusion dance character to be seen in the Dragon Ball series. He likes to call himself.",
        imgPath: "assets/gotenks.png",
      ),
      CharacterModel(
        id: "hit",
        race: "Unknown",
        name: "Hit",
        bio:
            "Hit, renowned as Never-Miss Hit  and as the Legendary Hitman is the legendary assassin of Universe 6. In addition he also later on becomes the leader for Team Universe 6.",
        imgPath: "assets/hit.png",
      ),
      CharacterModel(
        id: "krillin",
        race: "Human",
        name: "Krillin",
        bio:
            "Krillin, is a supporting protagonist in the Dragon Ball manga, and the anime series Dragon Ball, Dragon Ball Z, Dragon Ball GT and Dragon Ball Super. Krillin had a brief rivalry with Goku when they first met and trained under Master Roshi.",
        imgPath: "assets/krillin.png",
      ),
      CharacterModel(
        id: "jiren",
        race: "Unknown",
        name: "Jiren",
        bio:
            "Jiren, also referred to as Jiren The Gray, is a member of the Pride Troopers who participated in the Tournament of Power with the purpose of obtaining a wish from the Super Dragon Balls.",
        imgPath: "assets/jiren.png",
      ),
      CharacterModel(
        id: "tien",
        race: "Human",
        name: "Tien",
        bio:
            "Tien Shinhan is a disciplined, reclusive and heavily devoted martial artist, and one of the strongest Earthlings within the Dragon Ball universe. He also possesses a few non-human traits due to being descended from the Three-Eyed People.",
        imgPath: "assets/tien.png",
      ),
      CharacterModel(
        id: "android 17",
        race: "Android",
        name: "Android 17",
        bio:
            "Android 17, Lapis when he was an ordinary human, is the twin brother of Android 18 and Dr. Gero's seventeenth android creation, designed to serve Gero's vendetta against Goku. Despite his interests not initially deviating from this expectation.",
        imgPath: "assets/android17.png",
      ),
      CharacterModel(
        id: "android 18",
        race: "Android",
        name: "Android 18",
        bio:
            "Android 18, Artificial Human No. 18, Razuri when she was an ordinary human, is the twin sister of Android 17 and Dr. Gero's eighteenth android creation.",
        imgPath: "assets/android18.png",
      ),
      CharacterModel(
        id: "broly",
        race: "Saiyan",
        name: "Broly",
        bio:
            "Broly is the main antagonist in the Broly Triple Threat trilogy. He appears to be the latest of the Legendary Super Saiyans who appears every thousand years. His father is Paragus. Broly is a light-skinned Saiyan with dark eyes and black spiky hair reaching his mid-back with short bangs framing his forehead.",
        imgPath: "assets/broly.png",
      ),
      CharacterModel(
        id: "vegito",
        race: "Saiyan",
        name: "Vegito",
        bio:
            "Vegito, called Vegerot in the Viz English manga, is the immensely powerful result of the fusion between Goku and Vegeta by the use of the Potara Earrings.",
        imgPath: "assets/vegito.png",
      ),
      CharacterModel(
        id: "gogeta",
        race: "Saiyan",
        name: "Gogeta",
        bio:
            "Gogeta is the resulting fusion of two highly powerful Saiyans, Goku and Vegeta, when they perform the Fusion Dance properly. His voice is a dual voice that contains both Goku's and Vegeta's voices. Gogeta is famous for his amazing power and speed, and is regarded as one of the most powerful characters in the Dragon Ball Z and Dragon Ball GT series.",
        imgPath: "assets/gogeta.png",
      ),
      CharacterModel(
        id: "goku black",
        race: "Saiyan",
        name: "Goku Black",
        bio:
            "Goku Black, usually referred to as Black, is the main antagonist of the Future Trunks Saga of Dragon Ball Super. His true identity is the original present Zamasu, a former North Kai and Supreme Kai apprentice serving the Supreme Kai of Universe 10, Gowasu, from the unaltered main timeline, in which he stole the body of the original present Goku and sought to destroy all mortals alongside Future Zamasu.",
        imgPath: "assets/gokublack.png",
      )
    ];
  }
}
