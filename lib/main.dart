import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'page/dino_run_app_page.dart';
import 'models/settings.dart';
import 'models/player_data.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initializes hive and register the adapters.
  await initHive();
  runApp(const DinoRunApp());
}

// This function will initilize hive with apps documents directory.
// Additionally it will also register all the hive adapters.
Future<void> initHive() async {
  // For web hive does not need to be initialized.
  if (!kIsWeb) {
    final dir = await getApplicationDocumentsDirectory();
    Hive.init(dir.path);
  }

  Hive.registerAdapter<PlayerData>(PlayerDataAdapter());
  Hive.registerAdapter<Settings>(SettingsAdapter());
}

// The main widget for this game.
class DinoRunApp extends StatelessWidget {
  const DinoRunApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Run And Run',
        theme: ThemeData(
          fontFamily: 'Audiowide',
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          // Settings up some default theme for elevated buttons.
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              fixedSize: const Size(200, 60),
            ),
          ),
        ),
        home: const RunAndRunPage());
  }
}
