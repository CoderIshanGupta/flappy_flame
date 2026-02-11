import 'package:flutter/material.dart';

/// 🎮 GAME WORKSHOP SETTINGS
/// 
/// This is where you can customize your Flappy Bird game!
/// Change any number or color below and run the game to see your changes.
/// 
/// 💡 TIP: Start with small changes and test them one at a time!

class WorkshopSettings {
  // ═══════════════════════════════════════════════════════════════
  // 🐦 BIRD SETTINGS
  // ═══════════════════════════════════════════════════════════════
  
  /// How big is the bird? (in pixels)
  /// Try: 40, 50, 60
  static const double birdSize = 40;
  
  /// How fast does the bird fall down? (gravity)
  /// Higher = falls faster | Lower = floats more
  /// Try: 800, 1200, 1500
  static const double gravity = 1200;
  
  /// How strong is the jump?
  /// More negative = jumps higher
  /// Try: -300, -400, -500
  static const double jumpStrength = -400;
  
  /// What color is the bird?
  /// Try: Colors.red, Colors.blue, Color(0xFFFFD700)
  static const Color birdColor = Color(0xFFFFD700); // Gold
  
  /// Bird eye color
  static const Color birdEyeColor = Colors.black;
  
  /// Bird beak color
  static const Color birdBeakColor = Color(0xFFFF8C00); // Orange
  
  // ═══════════════════════════════════════════════════════════════
  // 🚀 PIPE/OBSTACLE SETTINGS
  // ═══════════════════════════════════════════════════════════════
  
  /// How wide are the pipes?
  /// Try: 60, 80, 100
  static const double pipeWidth = 80;
  
  /// How big is the gap between top and bottom pipes?
  /// Bigger = easier | Smaller = harder
  /// Try: 150, 200, 250
  static const double gapHeight = 200;
  
  /// How fast do pipes move?
  /// Higher = harder game
  /// Try: 150, 200, 250
  static const double pipeSpeed = 200;
  
  /// How often do new pipes appear? (in seconds)
  /// Lower = more pipes = harder
  /// Try: 1.5, 2.0, 3.0
  static const double pipeSpawnInterval = 2.0;
  
  /// Main pipe color
  static const Color pipeColor = Color(0xFF2ECC71); // Green
  
  /// Pipe border/outline color
  static const Color pipeBorderColor = Color(0xFF27AE60); // Dark green
  
  // ═══════════════════════════════════════════════════════════════
  // 🌍 GROUND SETTINGS
  // ═══════════════════════════════════════════════════════════════
  
  /// How tall is the ground?
  /// Try: 80, 100, 120
  static const double groundHeight = 100;
  
  /// Ground dirt color
  static const Color groundColor = Color(0xFF8B4513); // Brown
  
  /// Grass on top of ground
  static const Color grassColor = Color(0xFF228B22); // Green
  
  /// Ground line color (decorative)
  static const Color groundLineColor = Color(0xFF654321); // Dark brown
  
  // ═══════════════════════════════════════════════════════════════
  // 🌤️ BACKGROUND SETTINGS
  // ═══════════════════════════════════════════════════════════════
  
  /// Sky color (top)
  static const Color skyColorTop = Color(0xFF87CEEB); // Light blue
  
  /// Sky color (bottom)
  static const Color skyColorBottom = Color(0xFF4A90E2); // Darker blue
  
  /// Cloud color and transparency
  static const Color cloudColor = Colors.white;
  static const double cloudOpacity = 0.6; // 0.0 = invisible, 1.0 = solid
  
  // ═══════════════════════════════════════════════════════════════
  // 🎵 SOUND SETTINGS (Files to use from workshop/sounds/)
  // ═══════════════════════════════════════════════════════════════
  
  /// Enable or disable sounds
  static const bool soundEnabled = true;
  
  /// Sound file names (put these files in workshop/sounds/ folder)
  static const String jumpSound = 'jump.mp3';
  static const String scoreSound = 'score.mp3';
  static const String gameOverSound = 'game_over.mp3';
  
  // ═══════════════════════════════════════════════════════════════
  // 🖼️ CUSTOM IMAGE SETTINGS
  // ═══════════════════════════════════════════════════════════════
  
  /// Use custom images instead of drawn shapes?
  /// Set to true when you add images to workshop/assets/
  static const bool useCustomBird = false;
  static const bool useCustomPipes = false;
  
  /// Image file names (put these files in workshop/assets/ folder)
  static const String birdImage = 'bird.png';
  static const String pipeImage = 'pipe.png';
  
  // ═══════════════════════════════════════════════════════════════
  // 🎯 GAME DIFFICULTY
  // ═══════════════════════════════════════════════════════════════
  
  /// Starting position of bird (from left edge)
  static const double birdStartX = 100;
  
  /// Minimum distance from top/bottom for pipe gaps
  /// Smaller = harder (pipes can be very high or low)
  static const double minGapDistance = 150;
}

// ═══════════════════════════════════════════════════════════════
// 🎨 COLOR EXAMPLES - Copy and paste these!
// ═══════════════════════════════════════════════════════════════
//
// Basic colors:
//   Colors.red, Colors.blue, Colors.green, Colors.yellow
//   Colors.purple, Colors.orange, Colors.pink, Colors.black
//
// Custom colors (Hex codes):
//   Color(0xFFFF0000)  // Red
//   Color(0xFF00FF00)  // Green
//   Color(0xFF0000FF)  // Blue
//   Color(0xFFFFD700)  // Gold
//   Color(0xFFFF1493)  // Pink
//   Color(0xFF800080)  // Purple
//   Color(0xFF00FFFF)  // Cyan
//
// 💡 Find more colors at: https://htmlcolorcodes.com/
