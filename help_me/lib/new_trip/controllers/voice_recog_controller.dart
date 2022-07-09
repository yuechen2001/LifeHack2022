import 'dart:async';

import 'package:english_words/english_words.dart';
import 'package:flutter_tts/flutter_tts.dart' as tts;
import 'package:get/get.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;

class VoiceRecogController extends GetxController {
  late stt.SpeechToText speech;
  late tts.FlutterTts textReader;
  int wordIndex = 0;
  int finalIndex = nouns.length - 1;
  bool playNextWord = true;
  bool isListening = false;
  String text = 'Press the button and start speaking';

  @override
  void onInit() {
    speech = stt.SpeechToText();
    textReader = tts.FlutterTts();
    super.onInit();
  }

  // @override
  // void dispose() {
  //   endSession();
  //   super.dispose();
  // }

  Future<void> endSession() async {
    playNextWord = false;
    wordIndex = 0;
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
      });
      update();
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
    print("correct?: " + (nouns[wordIndex] == text).toString());
    return nouns[wordIndex] == text;
  }

  void checkIfAwake() async {
    if (playNextWord) {
      await listen();
      readText();
      Timer(const Duration(seconds: 3), () async {
        await stopListen();
        bool isCorrect = checkForCorrectResponse();
        Timer(const Duration(seconds: 3), () {
          checkIfAwake();
        });
        // if (isCorrect) {
        //   playNextWord = true;
        //   checkIfAwake();
        // } else {
        //   // set off an alarm
        //   stoplisten();
        //   playNextWord = false;
        //   print('You got it wrong!');
        // }
      });
    }
  }
}
