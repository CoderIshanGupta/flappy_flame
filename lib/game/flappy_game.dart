import 'dart:async';
import 'package:flame/game.dart';
import 'package:flame/events.dart';
import 'package:flame/components.dart';
import 'package:flappy_flame/game/bird.dart';
import 'package:flappy_flame/game/pipe.dart';
import 'package:flappy_flame/game/ground.dart';
import 'package:flappy_flame/game/background.dart';
import 'package:flappy_flame/services/score_service.dart';
import 'package:flappy_flame/services/audio_service.dart';
import 'package:flappy_flame/workshop/game_settings.dart';

enum GameState { menu, playing, gameOver }

class FlappyGame extends FlameGame with TapCallbacks, HasCollisionDetection {
  late Bird bird;
  late Ground ground;
  late GameBackground background;

  GameState gameState = GameState.menu;
  int score = 0;
  int highScore = 0;

  final ScoreService scoreService = ScoreService();
  final AudioService audioService = AudioService();
  Timer? pipeSpawnTimer;

  Function(int, int)? onScoreUpdate;
  Function()? onGameOverCallback;

  @override
  Future<void> onLoad() async {
    await super.onLoad();

    await audioService.initialize();
    highScore = await scoreService.getHighScore();

    background = GameBackground();
    add(background);

    bird = Bird();
    add(bird);

    ground = Ground();
    add(ground);
  }

  @override
  void update(double dt) {
    super.update(dt);
    if (gameState == GameState.playing) {
      pipeSpawnTimer?.update(dt);
    }
  }

  @override
  void onTapDown(TapDownEvent event) {
    if (gameState == GameState.playing) {
      bird.jump();
    } else if (gameState == GameState.menu) {
      startGame();
    }
  }

  void startGame() {
    gameState = GameState.playing;
    score = 0;
    bird.reset();

    children.whereType<PipePair>().forEach((pipe) => pipe.removeFromParent());

    pipeSpawnTimer = Timer(
      WorkshopSettings.pipeSpawnInterval,
      repeat: true,
      onTick: spawnPipe,
    );

    audioService.playSwoosh();
    onScoreUpdate?.call(score, highScore);
  }

  void spawnPipe() {
    final pipe = PipePair(xPosition: size.x);
    add(pipe);
  }

  void incrementScore() {
    // 🎓 Using student's calculatePoints function!
    int points = WorkshopSettings.getPoints(score);
    score += points;

    if (score > highScore) {
      highScore = score;
    }
    onScoreUpdate?.call(score, highScore);
  }

  void gameOver() {
    if (gameState == GameState.gameOver) return;

    gameState = GameState.gameOver;
    bird.isAlive = false;
    pipeSpawnTimer?.stop();

    audioService.playHit();
    scoreService.saveHighScore(score);

    onGameOverCallback?.call();
  }

  void resetGame() {
    gameState = GameState.menu;
    score = 0;
    bird.reset();
    children.whereType<PipePair>().forEach((pipe) => pipe.removeFromParent());
    pipeSpawnTimer?.stop();
    onScoreUpdate?.call(score, highScore);
  }
}
