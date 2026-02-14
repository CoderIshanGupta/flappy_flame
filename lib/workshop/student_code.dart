import 'package:flutter/material.dart';
import 'dart:math';

/// ════════════════════════════════════════════════════════════════
/// 🎓 STUDENT CODE FILE
/// ════════════════════════════════════════════════════════════════
/// 
/// Welcome! This is where YOU write code!
/// 
/// HOW THIS WORKS:
/// 1. Each section below has a TASK
/// 2. Read the instructions
/// 3. Write your code where it says "YOUR CODE HERE"
/// 4. Save and hot reload (press 'r')
/// 5. See your changes!
/// 
/// ════════════════════════════════════════════════════════════════

class StudentCode {
  
  // ═══════════════════════════════════════════════════════════════
  // ✏️ TASK 1: Choose Your Bird Color
  // ═══════════════════════════════════════════════════════════════
  
  static Color getBirdColor() {
    // Change the color below!
    return Colors.yellow;
  }
  
  // ═══════════════════════════════════════════════════════════════
  // ✏️ TASK 2: Set the Gravity
  // ═══════════════════════════════════════════════════════════════
  
  static double getGravity() {
    // Lower = easier (try 800)
    // Higher = harder (try 1500)
    return 1200;
  }
  
  // ═══════════════════════════════════════════════════════════════
  // ✏️ TASK 3: Set the Gap Size
  // ═══════════════════════════════════════════════════════════════
  
  static double getGapSize() {
    // Bigger = easier (try 250)
    // Smaller = harder (try 150)
    return 200;
  }
  
  // ═══════════════════════════════════════════════════════════════
  // ✏️ TASK 4: Set the Pipe Speed
  // ═══════════════════════════════════════════════════════════════
  
  static double getPipeSpeed() {
    // Slower = easier (try 150)
    // Faster = harder (try 250)
    return 200;
  }
  
  // ═══════════════════════════════════════════════════════════════
  // ✏️ TASK 5: Calculate Jump Strength
  // ═══════════════════════════════════════════════════════════════
  
  static double calculateJumpStrength(double gravity) {
    // Simple: return -400;
    // Smart: return gravity * -0.35;
    return -400;
  }
  
  // ═══════════════════════════════════════════════════════════════
  // ✏️ TASK 6: Choose Pipe Color
  // ═══════════════════════════════════════════════════════════════
  
  static Color getPipeColor() {
    return Colors.green;
  }
  
  // ═══════════════════════════════════════════════════════════════
  // ✏️ TASK 7: Choose Sky Colors
  // ═══════════════════════════════════════════════════════════════
  
  static Color getSkyTopColor() {
    return Color(0xFF87CEEB);  // Light blue
  }
  
  static Color getSkyBottomColor() {
    return Color(0xFF4A90E2);  // Darker blue
  }
  
  // ═══════════════════════════════════════════════════════════════
  // ✏️ TASK 8: Calculate Points
  // ═══════════════════════════════════════════════════════════════
  
  static int calculatePoints(int currentScore) {
    // Simple: return 1;
    // Bonus: give extra points at milestones
    return 1;
  }
  
  // ═══════════════════════════════════════════════════════════════
  // ✏️ TASK 9: Write Your Name!
  // ═══════════════════════════════════════════════════════════════
  
  static String getCreatorName() {
    return "Workshop Student";  // Put your name here!
  }
}