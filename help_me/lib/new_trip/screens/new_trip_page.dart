import 'package:avatar_glow/avatar_glow.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:help_me/new_trip/controllers/voice_recog_controller.dart';
import 'package:highlight_text/highlight_text.dart';

import '../../utils/constants.dart';

class NewTripPage extends StatelessWidget {
  NewTripPage({Key? key}) : super(key: key);

  final VoiceRecogController _speechCon = Get.put(VoiceRecogController());

  @override
  Widget build(BuildContext context) {
    final double _width = MediaQuery.of(context).size.width;
    final double _height = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          title: const Text('New Trip'),
          centerTitle: true,
          leading: GestureDetector(
            onTap: () async {
              await _speechCon.endSession();
              Get.delete<VoiceRecogController>();
              Get.back();
            },
            child: const Icon(Icons.arrow_back_ios_new),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: GetBuilder<VoiceRecogController>(
            builder: (controller) => AvatarGlow(
                  animate: _speechCon.isListening,
                  glowColor: Theme.of(context).primaryColor,
                  endRadius: 75.0,
                  duration: const Duration(milliseconds: 2000),
                  repeatPauseDuration: const Duration(milliseconds: 100),
                  repeat: true,
                  child: FloatingActionButton(
                    onPressed: () {
                      _speechCon.playNextWord = true;
                      _speechCon.listen();
                      _speechCon.readText();
                    },
                    child: Icon(
                        _speechCon.isListening ? Icons.mic : Icons.mic_none),
                  ),
                )),
        body: SingleChildScrollView(
          reverse: true,
          child: Column(
            children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  color: Colors.blue,
                  width: double.infinity,
                  height: _height * 0.4,
                  child: Center(
                    child: GetBuilder<VoiceRecogController>(
                        builder: (controller) => Text(
                              nouns[controller.wordIndex == 0
                                  ? 0
                                  : controller.wordIndex - 1],
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            )),
                  ),
                ),
              ),
              GetBuilder<VoiceRecogController>(
                builder: (controller) => Container(
                  padding: const EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 150.0),
                  child: TextHighlight(
                    text: controller.text,
                    words: highlights,
                    textStyle: const TextStyle(
                      fontSize: 32.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
