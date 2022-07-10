import 'package:avatar_glow/avatar_glow.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:help_me/new_trip/controllers/voice_recog_controller.dart';

class NewTripPage extends StatelessWidget {
  NewTripPage({Key? key}) : super(key: key);

  final VoiceRecogController _speechCon = Get.put(VoiceRecogController());

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 211, 34),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 255, 211, 34),
          elevation: 0,
          centerTitle: true,
          title: const Text(
            'Stay Awake!',
            style: TextStyle(color: Colors.black, fontSize: 32),
          ),
          leading: GestureDetector(
            onTap: () async {},
            child: const Icon(
              Icons.arrow_back_ios_new,
              color: Color.fromARGB(255, 255, 211, 34),
            ),
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
                      GetBuilder<VoiceRecogController>(builder: (controller) {
                        return CircularCountDownTimer(
                          duration: controller.frequency.toInt(),
                          controller: _speechCon.countDownCon,
                          width: MediaQuery.of(context).size.width / 2.75,
                          height: MediaQuery.of(context).size.height / 5,
                          ringColor: Colors.grey[300]!,
                          fillColor: Colors.orangeAccent,
                          strokeWidth: 10.0,
                          strokeCap: StrokeCap.round,
                          textStyle: const TextStyle(
                              fontSize: 24.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                          textFormat: CountdownTextFormat.S,
                          isReverse: true,
                          isReverseAnimation: true,
                          isTimerTextShown: true,
                          autoStart: false,
                          onStart: () {
                            debugPrint('Countdown Started');
                          },
                          onComplete: () {
                            debugPrint('Countdown Ended');
                          },
                          onChange: (String timeStamp) {
                            debugPrint('Countdown Changed $timeStamp');
                          },
                        );
                      }),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 2.75,
                            height: MediaQuery.of(context).size.height / 5,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromARGB(255, 252, 181, 74)),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text("Current word: ",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 21,
                                        fontWeight: FontWeight.w500)),
                                Center(
                                  child: GetBuilder<VoiceRecogController>(
                                      builder: (controller) => Text(
                                            nouns[controller.wordIndex == 0
                                                ? 0
                                                : controller.wordIndex - 1],
                                            textAlign: TextAlign.center,
                                            style: const TextStyle(
                                                fontSize: 21,
                                                fontWeight: FontWeight.w400),
                                          )),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 16),
                          Container(
                            width: MediaQuery.of(context).size.width / 2.75,
                            height: MediaQuery.of(context).size.height / 5,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromARGB(255, 255, 209, 141)),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text("Your input: ",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 21,
                                        fontWeight: FontWeight.w500)),
                                GetBuilder<VoiceRecogController>(
                                  builder: (controller) => SizedBox(
                                    width: width * 0.35,
                                    child: Text(
                                      controller.text,
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontSize: 21,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 32),
                      GetBuilder<VoiceRecogController>(builder: (controller) {
                        return controller.tripStarted
                            ? const SizedBox()
                            : Slider(
                                activeColor: Colors.yellow,
                                inactiveColor: Colors.grey[300],
                                value: controller.frequency.toDouble(),
                                max: 10,
                                min: 5,
                                divisions: 5,
                                label:
                                    "${controller.frequency.toString()}s intervals",
                                onChanged: (double value) {
                                  _speechCon.frequency = value;
                                  _speechCon.update();
                                },
                              );
                      }),
                      GetBuilder<VoiceRecogController>(
                          builder: (controller) => AvatarGlow(
                              animate: _speechCon.isListening,
                              glowColor: Colors.deepOrange,
                              endRadius: 75.0,
                              duration: const Duration(milliseconds: 2000),
                              repeatPauseDuration:
                                  const Duration(milliseconds: 100),
                              repeat: true,
                              child: GestureDetector(
                                onTap: () {
                                  _speechCon.playNextWord = true;
                                  _speechCon.tripStarted;
                                  _speechCon.update();
                                  _speechCon.checkIfAwake();
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.black, width: 1.5),
                                      borderRadius: BorderRadius.circular(10.0),
                                      color: Colors.amber),
                                  width: double.infinity,
                                  child: const Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 8.0),
                                    child: Text("Start Trip!",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 21,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600)),
                                  ),
                                ),
                              ))),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
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
                                border:
                                    Border.all(color: Colors.black, width: 1.5),
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
                      ),
                    ],
                  ),
                ))));
  }
}
