import 'package:audioplayers/audioplayers.dart';
import 'package:hexcolor/hexcolor.dart';

class TuneModel {
  final HexColor color;
  final String sound;
  const TuneModel({required this.color, required this.sound});

  void playSound() {
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }
}
