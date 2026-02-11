import 'package:flappy_flame/workshop/game_settings.dart';

/// Helper class to load workshop assets (images and sounds)
class WorkshopAssets {
  // Asset paths
  static const String _assetsPath = 'workshop/assets/';
  static const String _soundsPath = 'workshop/sounds/';

  /// Get the path to a custom bird image
  static String? getBirdImagePath() {
    if (WorkshopSettings.useCustomBird) {
      return '$_assetsPath${WorkshopSettings.birdImage}';
    }
    return null;
  }

  /// Get the path to a custom pipe image
  static String? getPipeImagePath() {
    if (WorkshopSettings.useCustomPipes) {
      return '$_assetsPath${WorkshopSettings.pipeImage}';
    }
    return null;
  }

  /// Get the path to a sound effect
  static String? getSoundPath(String soundFile) {
    if (WorkshopSettings.soundEnabled) {
      return '$_soundsPath$soundFile';
    }
    return null;
  }

  /// Check if custom bird should be used
  static bool get useCustomBird => WorkshopSettings.useCustomBird;

  /// Check if custom pipes should be used
  static bool get useCustomPipes => WorkshopSettings.useCustomPipes;
}
