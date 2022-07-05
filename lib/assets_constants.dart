mixin Assets {
  static AssetImages get images => AssetImages();
  static AssetIcons get icons => AssetIcons();
}

class AssetIcons {
  String location = 'assets/icons';
  String get zilpath => '$location/zil_logo.svg';
}

class AssetImages {
  String location = 'assets/images';

  String get bgFood => '$location/foode.png';
  String get logo_round => '$location/zil_round_logo.png';
}
