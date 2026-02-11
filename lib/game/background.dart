import 'package:flame/components.dart';
import 'package:flutter/material.dart';
import 'package:flappy_flame/game/flappy_game.dart';
import 'package:flappy_flame/workshop/game_settings.dart';

class GameBackground extends PositionComponent with HasGameRef<FlappyGame> {
  @override
  Future<void> onLoad() async {
    size = gameRef.size;
    position = Vector2.zero();
  }

  @override
  void render(Canvas canvas) {
    super.render(canvas);
    final rect = Rect.fromLTWH(0, 0, size.x, size.y);
    final gradient = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        WorkshopSettings.skyColorTop,
        WorkshopSettings.skyColorBottom,
      ],
    );
    final paint = Paint()..shader = gradient.createShader(rect);
    canvas.drawRect(rect, paint);

    final cloudPaint = Paint()
      ..color = WorkshopSettings.cloudColor
          .withValues(alpha: WorkshopSettings.cloudOpacity);
    canvas.drawCircle(const Offset(100, 100), 30, cloudPaint);
    canvas.drawCircle(const Offset(130, 100), 40, cloudPaint);
    canvas.drawCircle(const Offset(160, 100), 30, cloudPaint);

    canvas.drawCircle(const Offset(300, 180), 35, cloudPaint);
    canvas.drawCircle(const Offset(335, 180), 45, cloudPaint);
    canvas.drawCircle(const Offset(370, 180), 35, cloudPaint);
  }
}
