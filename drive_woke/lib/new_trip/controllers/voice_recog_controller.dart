import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter_tts/flutter_tts.dart' as tts;
import 'package:get/get.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;

class VoiceRecogController extends GetxController {
  final CountDownController countDownCon = CountDownController();
  late stt.SpeechToText speech;
  late tts.FlutterTts textReader;
  late AudioPlayer audioPlayer;

  double frequency = 5;
  int wordIndex = 0;
  int finalIndex = nouns.length - 1;
  bool tripStarted = false;
  bool playNextWord = true;
  bool isListening = false;
  bool alarmPlaying = false;
  String text = '';
  String safePassword = 'hello';

  @override
  void onInit() {
    speech = stt.SpeechToText();
    textReader = tts.FlutterTts();
    super.onInit();
  }

  Future<void> endSession() async {
    playNextWord = false;
    wordIndex = 0;
    await stopAlarm();
    await speech.cancel();
    await textReader.stop();
  }

  Future<void> listen() async {
    bool available = await speech.initialize(
      onStatus: (val) => print('onStatus: $val'),
      onError: (val) => print('onError: $val'),
    );
    if (available) {
      isListening = true;
      speech.listen(onResult: (val) {
        text = val.recognizedWords;
        update();
      });
    }
  }

  Future<void> stopListen() async {
    isListening = false;
    await speech.stop();
    update();
  }

  void readText() {
    textReader.speak(nouns[wordIndex]);
    if (wordIndex < finalIndex) {
      wordIndex += 1;
      update();
    } else {
      wordIndex = 0;
      update();
    }
  }

  bool checkForCorrectResponse() {
    return nouns[wordIndex - 1] == text.trim().toLowerCase();
  }

  Future<void> triggerAlarm() async {
    audioPlayer = AudioPlayer();
    await audioPlayer.play(AssetSource('audio/alarm.mp3'));
    audioPlayer.onPlayerComplete.listen((event) {
      audioPlayer.play(AssetSource('audio/alarm.mp3'));
    });
  }

  Future<void> stopAlarm() async {
    if (alarmPlaying) {
      await audioPlayer.release();
      alarmPlaying = false;
      update();
    }
  }

  Future<void> wakeDriverUp() async {
    print("wake up!");
    alarmPlaying = true;
    update();
    await triggerAlarm();
    // Listen to keyword to stop alarm and run checkIfAwake again
    await listen();
    Timer(const Duration(seconds: 5), () async {
      print("listening for password " + text);
      if (text.trim().toLowerCase() == safePassword) {
        await stopAlarm();
        playNextWord = true;
        countDownCon.start();
        checkIfAwake();
      }
    });
  }

  Future<void> pauseTrip() async {
    countDownCon.reset();
    await stopAlarm();
    await speech.cancel();
    await textReader.stop();
  }

  void checkIfAwake() async {
    if (playNextWord) {
      await listen();
      readText();
      countDownCon.start();
      Timer(Duration(seconds: frequency.toInt()), () async {
        await stopListen();
        bool isCorrect = checkForCorrectResponse();
        if (isCorrect) {
          playNextWord = true;
          Timer(const Duration(seconds: 3), () {
            countDownCon.reset();
            checkIfAwake();
          });
        } else {
          await stopListen();
          playNextWord = false;
          await wakeDriverUp();
        }
      });
    }
  }
}
