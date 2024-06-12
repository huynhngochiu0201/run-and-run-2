import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:game_run_and_run/widgets/game_over_menu.dart';
import 'package:game_run_and_run/widgets/hud.dart';
import 'package:game_run_and_run/widgets/main_menu.dart';
import 'package:game_run_and_run/widgets/pause_menu.dart';
import 'package:game_run_and_run/widgets/settings_menu.dart';

import '../game/run.dart';

class RunAndRunPage extends StatelessWidget {
  const RunAndRunPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GameWidget<Run>.controlled(
        // This will dislpay a loading bar until [DinoRun] completes
        // its onLoad method.
        loadingBuilder: (conetxt) => const Center(
          child: SizedBox(
            width: 200,
            child: LinearProgressIndicator(),
          ),
        ),
        // Register all the overlays that will be used by this game.
        overlayBuilderMap: {
          MainMenu.id: (_, game) => MainMenu(game),
          PauseMenu.id: (_, game) => PauseMenu(game),
          Hud.id: (_, game) => Hud(game),
          GameOverMenu.id: (_, game) => GameOverMenu(game),
          SettingsMenu.id: (_, game) => SettingsMenu(game),
        },
        // By default MainMenu overlay will be active.
        initialActiveOverlays: const [MainMenu.id],
        gameFactory: () => Run(
          // Use a fixed resolution camera to avoid manually
          // scaling and handling different screen sizes.
          camera: CameraComponent.withFixedResolution(
            width: 360,
            height: 180,
          ),
        ),
      ),
    );
  }
}
