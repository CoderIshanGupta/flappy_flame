import 'package:flappy_flame/workshop/game_settings.dart';

/// Helper class to load workshop assets (images and sounds)
class WorkshopAssets {
  // Asset paths
  static const String _assetsPath = 'assets/workshop/images/';
  static const String _soundsPath = 'assets/workshop/sounds/';

  /// Get the path to a custom bird image
  static String? getBirdImagePath() {
    if (WorkshopSettings.useCustomBirdImage) {
      return '$_assetsPath${WorkshopSettings.birdImageFile}';
    }
    return null;
  }

  /// Get the path to a custom pipe image
  static String? getPipeImagePath() {
    if (WorkshopSettings.useCustomPipeImage) {
      return '$_assetsPath${WorkshopSettings.pipeImageFile}';
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
  static bool get useCustomBird => WorkshopSettings.useCustomBirdImage;

  /// Check if custom pipes should be used
  static bool get useCustomPipes => WorkshopSettings.useCustomPipeImage;
  
  /// Get jump sound path
  static String? get jumpSoundPath => 
      WorkshopSettings.soundEnabled ? '$_soundsPath${WorkshopSettings.jumpSound}' : null;
  
  /// Get score sound path
  static String? get scoreSoundPath => 
      WorkshopSettings.soundEnabled ? '$_soundsPath${WorkshopSettings.scoreSound}' : null;
  
  /// Get hit sound path
  static String? get hitSoundPath => 
      WorkshopSettings.soundEnabled ? '$_soundsPath${WorkshopSettings.hitSound}' : null;
  
  /// Get swoosh sound path
  static String? get swooshSoundPath => 
      WorkshopSettings.soundEnabled ? '$_soundsPath${WorkshopSettings.swooshSound}' : null;
}