import '/models/settings.dart';
import 'package:flame/flame.dart';
import 'package:flame_audio/flame_audio.dart';

/// This class is the common interface between [DinoRun]
/// and [Flame] engine's audio APIs.
class AudioManager {
  late Settings settings;
  AudioManager._internal();

  static final AudioManager _instance = AudioManager._internal();

  static AudioManager get instance => _instance;

  Future<void> init(List<String> files, Settings settings) async {
    this.settings = settings;
    FlameAudio.bgm.initialize();
    await FlameAudio.audioCache.loadAll(files);
  }

  void startBgm(String fileName) {
    if (settings.bgm) {
      FlameAudio.bgm.play(fileName, volume: 0.4);
    }
  }

  void pauseBgm() {
    if (settings.bgm) {
      FlameAudio.bgm.pause();
    }
  }

  void resumeBgm() {
    if (settings.bgm) {
      FlameAudio.bgm.resume();
    }
  }

  void stopBgm() {
    FlameAudio.bgm.stop();
  }

  void playSfx(String fileName) {
    if (settings.sfx) {
      FlameAudio.play(fileName);
    }
  }
}
