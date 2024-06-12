class CharacterModel {
  String? name;
  String? imagePath;

  CharacterModel(this.name, this.imagePath);
}

List<CharacterModel> characters = [
  CharacterModel('Doux', 'assets/images/DinoSprites_doux.gif'),
  CharacterModel('Mort', 'assets/images/DinoSprites_mort.gif'),
  CharacterModel('Tard', 'assets/images/DinoSprites_tard.gif'),
  CharacterModel('Vita', 'assets/images/DinoSprites_vita.gif'),
  // Add more characters here
];
