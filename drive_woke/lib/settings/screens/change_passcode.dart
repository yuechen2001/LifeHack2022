import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:passwordfield/passwordfield.dart';

class ChangePasscode extends StatelessWidget {
  const ChangePasscode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 211, 34),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 255, 211, 34),
          elevation: 0,
          title: const Text(
            "Change Safeword",
            style: TextStyle(color: Colors.black, fontSize: 32),
          ),
          leading: GestureDetector(
            onTap: () async {},
            child: const Icon(
              Icons.arrow_back_ios_new,
              color: Color.fromARGB(255, 255, 211, 34),
            ),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50.0),
                          topRight: Radius.circular(50.0)),
                      color: Colors.white),
                  child: Padding(
                      padding: const EdgeInsets.only(
                          top: 32.0, left: 32.0, right: 32.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Modify your safeword:",
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.bold)),
                            const SizedBox(height: 8.0),
                            Text(
                                "A safeword allows you to reset the alarm and continue your journey!",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey[600])),
                            const SizedBox(height: 32.0),
                            PasswordField(
                              color: Colors.black,
                              passwordConstraint: r'^[a-z]*$',
                              inputDecoration: PasswordDecoration(),
                              hasFloatingPlaceholder: true,
                              floatingText: "Enter Old Safeword",
                              hintText: "Enter your old word.",
                              maxLength: 4,
                              border: PasswordBorder(
                                border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.black, width: 2.0),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.black, width: 2.0),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: const BorderSide(
                                      width: 2, color: Colors.red),
                                ),
                              ),
                              errorMessage:
                                  'Should only contain lowercase letters',
                            ),
                            const SizedBox(height: 32.0),
                            PasswordField(
                              color: Colors.black,
                              passwordConstraint: r'^[a-z]*$',
                              inputDecoration: PasswordDecoration(),
                              hasFloatingPlaceholder: true,
                              floatingText: "Enter New Safeword",
                              hintText:
                                  "Enter your favourite word (e.g. hello).",
                              maxLength: 4,
                              border: PasswordBorder(
                                border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.black, width: 2.0),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.black, width: 2.0),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: const BorderSide(
                                      width: 2, color: Colors.red),
                                ),
                              ),
                              errorMessage:
                                  'Should only contain lowercase letters',
                            ),
                            const SizedBox(height: 32.0),
                            PasswordField(
                              color: Colors.black,
                              passwordConstraint: r'^[a-z]*$',
                              inputDecoration: PasswordDecoration(),
                              hasFloatingPlaceholder: true,
                              floatingText: "Re-Enter New Safeword",
                              hintText: "Re-Enter your favourite word.",
                              maxLength: 4,
                              border: PasswordBorder(
                                border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.black, width: 2.0),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.black, width: 2.0),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: const BorderSide(
                                      width: 2, color: Colors.red),
                                ),
                              ),
                              errorMessage:
                                  'Should only contain lowercase letters',
                            ),
                            const SizedBox(height: 135),
                            GestureDetector(
                              onTap: () {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                          content:
                                              const Text("Safeword Changed!"),
                                          actions: [
                                            TextButton(
                                                onPressed: () {
                                                  Get.back();
                                                  Get.back();
                                                },
                                                child: const Text("Close"))
                                          ]);
                                    });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(255, 255, 211, 34),
                                    borderRadius: BorderRadius.circular(10.0)),
                                width: double.infinity,
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(vertical: 8.0),
                                  child: Text("Confirm",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 21,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600)),
                                ),
                              ),
                            ),
                            const SizedBox(height: 32),
                            GestureDetector(
                              onTap: () {
                                Get.back();
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.black, width: 1.5),
                                    borderRadius: BorderRadius.circular(10.0)),
                                width: double.infinity,
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(vertical: 8.0),
                                  child: Text("Back",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 21,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600)),
                                ),
                              ),
                            ),
                            const SizedBox(height: 120),
                          ])))),
        ));
  }
}
