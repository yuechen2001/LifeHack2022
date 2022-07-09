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
    final double _height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.yellowAccent,
        appBar: AppBar(
          backgroundColor: Colors.yellowAccent,
          elevation: 0,
          centerTitle: true,
          leading: GestureDetector(
            onTap: () async {},
            child: const Icon(Icons.arrow_back_ios_new,
                color: Colors.yellowAccent),
          ),
        ),
        body: Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50.0),
                        topRight: Radius.circular(50.0)),
                    color: Colors.white),
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 32.0, left: 32.0, right: 32.0),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          color: Colors.blue,
                          width: double.infinity,
                          child: Center(
                            child: GetBuilder<VoiceRecogController>(
                                builder: (controller) => Text(
                                      nouns[controller.wordIndex == 0
                                          ? 0
                                          : controller.wordIndex - 1],
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    )),
                          ),
                        ),
                      ),
                      GetBuilder<VoiceRecogController>(
                        builder: (controller) => Container(
                          padding: const EdgeInsets.fromLTRB(
                              30.0, 30.0, 30.0, 150.0),
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
                      GetBuilder<VoiceRecogController>(
                          builder: (controller) => AvatarGlow(
                                animate: _speechCon.isListening,
                                glowColor: Colors.deepOrange,
                                endRadius: 75.0,
                                duration: const Duration(milliseconds: 2000),
                                repeatPauseDuration:
                                    const Duration(milliseconds: 100),
                                repeat: true,
                                child: FloatingActionButton(
                                  backgroundColor: Colors.amber,
                                  onPressed: () {
                                    _speechCon.playNextWord = true;
                                    _speechCon.checkIfAwake();
                                  },
                                  child: Icon(_speechCon.isListening
                                      ? Icons.mic
                                      : Icons.mic_none),
                                ),
                              )),
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: GestureDetector(
                              onTap: () {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                          title: const Text("Warning"),
                                          content: const Text(
                                              "Do you want to end your current trip?"),
                                          actions: [
                                            TextButton(
                                                onPressed: () {
                                                  Get.back();
                                                  Get.back();
                                                },
                                                child: const Text("Confirm"))
                                          ]);
                                    });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.black, width: 1.5),
                                    borderRadius: BorderRadius.circular(10.0)),
                                width: double.infinity,
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(vertical: 8.0),
                                  child: Text("End Trip",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 21,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600)),
                                ),
                              ),
                            ),
                          )),
                    ],
                  ),
                ))));
  }
}
