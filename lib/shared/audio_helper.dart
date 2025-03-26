import 'package:audioplayers/audioplayers.dart';

class AudioHelper {
  static final AudioPlayer _audioPlayer = AudioPlayer();

  static Future<void> playAudioFromAsset(String fileName) async {
    try {
      await _audioPlayer.play(
        AssetSource('audios/$fileName'),
        position: const Duration(milliseconds: 500),
        volume: 1.0,
      );
    } catch (e) {
      print("Lỗi phát âm $e");
    }
  }
}
