import 'package:audioplayers/audioplayers.dart';

class ItemModel {
  final String? image;
  final String jaName;
  final String enName;
  final String sound;
  const ItemModel(
      {this.image,
      required this.jaName,
      required this.enName,
      required this.sound});
      playSound() {
  final player = AudioPlayer();
  player.play(AssetSource(sound));
      
}

}
