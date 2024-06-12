import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:provider12/provider.dart';

import '../models/Character_model.dart';
import '../game/run.dart';
import '/models/settings.dart';
import '/widgets/main_menu.dart';
import '/game/audio_manager.dart';

class SettingsMenu extends StatelessWidget {
  static const id = 'SettingsMenu';

  final Run game;

  const SettingsMenu(this.game, {super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: game.settings,
      child: Center(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.8,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              color: Colors.black.withAlpha(100),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 100),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Selector<Settings, bool>(
                      selector: (_, settings) => settings.bgm,
                      builder: (context, bgm, __) {
                        return SwitchListTile(
                          title: const Text(
                            'Music',
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                            ),
                          ),
                          value: bgm,
                          onChanged: (bool value) {
                            Provider.of<Settings>(context, listen: false).bgm =
                                value;
                            if (value) {
                              AudioManager.instance
                                  .startBgm('8BitPlatformerLoop.wav');
                            } else {
                              AudioManager.instance.stopBgm();
                            }
                          },
                        );
                      },
                    ),
                    Selector<Settings, bool>(
                      selector: (_, settings) => settings.sfx,
                      builder: (context, sfx, __) {
                        return SwitchListTile(
                          title: const Text(
                            'Effects',
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                            ),
                          ),
                          value: sfx,
                          onChanged: (bool value) {
                            Provider.of<Settings>(context, listen: false).sfx =
                                value;
                          },
                        );
                      },
                    ),
                    const Text(
                      'Select Character',
                      style: TextStyle(
                        fontSize: 30,
                        color: Color.fromARGB(255, 228, 149, 149),
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: characters.length,
                        itemBuilder: (context, index) {
                          final character = characters[index];
                          return ListTile(
                            leading: Image.asset(character.imagePath ?? ''),
                            title: Text(
                              character.name ?? '',
                              style: const TextStyle(color: Colors.white),
                            ),
                            onTap: () {
                              // Handle character selection here
                              // For example, you can update the character in settings
                              // Provider.of<Settings>(context, listen: false).selectedCharacter = character;
                            },
                          );
                        },
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        game.overlays.remove(SettingsMenu.id);
                        game.overlays.add(MainMenu.id);
                      },
                      child: const Icon(Icons.arrow_back_ios_rounded),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
