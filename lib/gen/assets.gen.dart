/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsAudioGen {
  const $AssetsAudioGen();

  /// File path: assets/audio/8BitPlatformerLoop.wav
  String get a8BitPlatformerLoop => 'assets/audio/8BitPlatformerLoop.wav';

  /// File path: assets/audio/hurt7.wav
  String get hurt7 => 'assets/audio/hurt7.wav';

  /// File path: assets/audio/jump14.wav
  String get jump14 => 'assets/audio/jump14.wav';

  /// File path: assets/audio/readme.md
  String get readme => 'assets/audio/readme.md';

  /// List of all assets
  List<String> get values => [a8BitPlatformerLoop, hurt7, jump14, readme];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// Directory path: assets/images/AngryPig
  $AssetsImagesAngryPigGen get angryPig => const $AssetsImagesAngryPigGen();

  /// Directory path: assets/images/Bat
  $AssetsImagesBatGen get bat => const $AssetsImagesBatGen();

  /// File path: assets/images/DinoSprites - mort.png
  AssetGenImage get dinoSpritesMortPng =>
      const AssetGenImage('assets/images/DinoSprites - mort.png');

  /// File path: assets/images/DinoSprites_mort.gif
  AssetGenImage get dinoSpritesMortGif =>
      const AssetGenImage('assets/images/DinoSprites_mort.gif');

  /// File path: assets/images/DinoSprites - tard.png
  AssetGenImage get dinoSpritesTardPng =>
      const AssetGenImage('assets/images/DinoSprites - tard.png');

  /// File path: assets/images/DinoSprites_tard.gif
  AssetGenImage get dinoSpritesTardGif =>
      const AssetGenImage('assets/images/DinoSprites_tard.gif');

  /// File path: assets/images/DinoSprites_doux.gif
  AssetGenImage get dinoSpritesDoux =>
      const AssetGenImage('assets/images/DinoSprites_doux.gif');

  /// File path: assets/images/DinoSprites_vita.gif
  AssetGenImage get dinoSpritesVita =>
      const AssetGenImage('assets/images/DinoSprites_vita.gif');

  /// Directory path: assets/images/Rino
  $AssetsImagesRinoGen get rino => const $AssetsImagesRinoGen();

  /// File path: assets/images/Untitled-2.gif
  AssetGenImage get untitled2 =>
      const AssetGenImage('assets/images/Untitled-2.gif');

  /// Directory path: assets/images/parallax1
  $AssetsImagesParallax1Gen get parallax1 => const $AssetsImagesParallax1Gen();

  /// File path: assets/images/readme.md
  String get readme => 'assets/images/readme.md';

  /// List of all assets
  List<dynamic> get values => [
        dinoSpritesMortPng,
        dinoSpritesMortGif,
        dinoSpritesTardPng,
        dinoSpritesTardGif,
        dinoSpritesDoux,
        dinoSpritesVita,
        untitled2,
        readme
      ];
}

class $AssetsImagesAngryPigGen {
  const $AssetsImagesAngryPigGen();

  /// File path: assets/images/AngryPig/Walk (36x30).png
  AssetGenImage get walk36x30 =>
      const AssetGenImage('assets/images/AngryPig/Walk (36x30).png');

  /// List of all assets
  List<AssetGenImage> get values => [walk36x30];
}

class $AssetsImagesBatGen {
  const $AssetsImagesBatGen();

  /// File path: assets/images/Bat/Flying (46x30).png
  AssetGenImage get flying46x30 =>
      const AssetGenImage('assets/images/Bat/Flying (46x30).png');

  /// List of all assets
  List<AssetGenImage> get values => [flying46x30];
}

class $AssetsImagesRinoGen {
  const $AssetsImagesRinoGen();

  /// File path: assets/images/Rino/Run (52x34).png
  AssetGenImage get run52x34 =>
      const AssetGenImage('assets/images/Rino/Run (52x34).png');

  /// List of all assets
  List<AssetGenImage> get values => [run52x34];
}

class $AssetsImagesParallax1Gen {
  const $AssetsImagesParallax1Gen();

  /// File path: assets/images/parallax1/plx-1.png
  AssetGenImage get plx1 =>
      const AssetGenImage('assets/images/parallax1/plx-1.png');

  /// File path: assets/images/parallax1/plx-11.png
  AssetGenImage get plx11 =>
      const AssetGenImage('assets/images/parallax1/plx-11.png');

  /// File path: assets/images/parallax1/plx-12.png
  AssetGenImage get plx12 =>
      const AssetGenImage('assets/images/parallax1/plx-12.png');

  /// File path: assets/images/parallax1/plx-13.png
  AssetGenImage get plx13 =>
      const AssetGenImage('assets/images/parallax1/plx-13.png');

  /// File path: assets/images/parallax1/plx-14.png
  AssetGenImage get plx14 =>
      const AssetGenImage('assets/images/parallax1/plx-14.png');

  /// File path: assets/images/parallax1/plx-8.png
  AssetGenImage get plx8 =>
      const AssetGenImage('assets/images/parallax1/plx-8.png');

  /// File path: assets/images/parallax1/plx-9.png
  AssetGenImage get plx9 =>
      const AssetGenImage('assets/images/parallax1/plx-9.png');

  /// List of all assets
  List<AssetGenImage> get values =>
      [plx1, plx11, plx12, plx13, plx14, plx8, plx9];
}

class Assets {
  Assets._();

  static const $AssetsAudioGen audio = $AssetsAudioGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName, {this.size = null});

  final String _assetName;

  final Size? size;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
