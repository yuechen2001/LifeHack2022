import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:help_me/authentication/screens/login_screen.dart';
import 'package:help_me/settings/screens/change_passcode.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.yellowAccent,
        appBar: AppBar(
          backgroundColor: Colors.yellowAccent,
          elevation: 0,
          title: const Text(
            "Settings",
            style: TextStyle(color: Colors.black, fontSize: 32),
          ),
          centerTitle: true,
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
                  padding: const EdgeInsets.symmetric(
                      vertical: 32.0, horizontal: 32),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Account Options:",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold)),
                      const SizedBox(height: 16.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: const [
                              Icon(
                                Icons.book_rounded,
                                color: Colors.grey,
                              ),
                              SizedBox(width: 8),
                              Text("Word Bank",
                                  style: TextStyle(
                                      fontSize: 21,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black)),
                            ],
                          ),
                          const Icon(Icons.arrow_forward_ios,
                              color: Colors.black, size: 20.0),
                        ],
                      ),
                      const SizedBox(height: 8.0),
                      Divider(
                          color: Colors.grey.withOpacity(0.3), thickness: 1.5),
                      const SizedBox(height: 16.0),
                      GestureDetector(
                        onTap: () => Get.to(() => const ChangePasscode()),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: const [
                                Icon(
                                  Icons.password_rounded,
                                  color: Colors.grey,
                                ),
                                SizedBox(width: 8),
                                Text("Change Safeword",
                                    style: TextStyle(
                                        fontSize: 21,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black)),
                              ],
                            ),
                            const Icon(Icons.arrow_forward_ios,
                                color: Colors.black, size: 20.0),
                          ],
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      Divider(
                          color: Colors.grey.withOpacity(0.3), thickness: 1.5),
                      const SizedBox(height: 16.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: const [
                              Icon(
                                Icons.help_rounded,
                                color: Colors.grey,
                              ),
                              SizedBox(width: 8),
                              Text("User Guidelines",
                                  style: TextStyle(
                                      fontSize: 21,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black)),
                            ],
                          ),
                          const Icon(Icons.arrow_forward_ios,
                              color: Colors.black, size: 20.0),
                        ],
                      ),
                      const SizedBox(height: 8.0),
                      Divider(
                          color: Colors.grey.withOpacity(0.3), thickness: 1.5),
                      const SizedBox(height: 16.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: const [
                              Icon(
                                Icons.bug_report,
                                color: Colors.grey,
                              ),
                              SizedBox(width: 8),
                              Text("Report Bugs",
                                  style: TextStyle(
                                      fontSize: 21,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black)),
                            ],
                          ),
                          const Icon(Icons.arrow_forward_ios,
                              color: Colors.black, size: 20.0),
                        ],
                      ),
                      const SizedBox(height: 8.0),
                      Divider(
                          color: Colors.grey.withOpacity(0.3), thickness: 1.5),
                      const SizedBox(height: 16.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: const [
                              Icon(
                                Icons.privacy_tip_rounded,
                                color: Colors.grey,
                              ),
                              SizedBox(width: 8),
                              Text("Privacy Policy",
                                  style: TextStyle(
                                      fontSize: 21,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black)),
                            ],
                          ),
                          const Icon(Icons.arrow_forward_ios,
                              color: Colors.black, size: 20.0),
                        ],
                      ),
                      const SizedBox(height: 8.0),
                      Divider(
                          color: Colors.grey.withOpacity(0.3), thickness: 1.5),
                      const SizedBox(height: 16.0),
                      GestureDetector(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                    title: const Text("Quest Busters!"),
                                    content: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: const [
                                        Text("Harry Chang"),
                                        Text("Kaushik Rangaraj"),
                                        Text("Wong Jia Yi"),
                                        Text("Zhu Yuechen")
                                      ],
                                    ),
                                    actions: [
                                      TextButton(
                                          onPressed: () {
                                            Get.back();
                                          },
                                          child: const Text("Close"))
                                    ]);
                              });
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: const [
                                Icon(
                                  Icons.celebration_rounded,
                                  color: Colors.grey,
                                ),
                                SizedBox(width: 8),
                                Text("Credits",
                                    style: TextStyle(
                                        fontSize: 21,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black)),
                              ],
                            ),
                            const Icon(Icons.arrow_forward_ios,
                                color: Colors.black, size: 20.0),
                          ],
                        ),
                      ),
                      const SizedBox(height: 75),
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: GestureDetector(
                              onTap: () => Get.to(() => const LoginPage()),
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.black, width: 1.5),
                                    borderRadius: BorderRadius.circular(10.0)),
                                width: double.infinity,
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(vertical: 8.0),
                                  child: Text("Sign Out",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 21,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600)),
                                ),
                              ),
                            ),
                          ))
                    ],
                  ),
                ))));
  }
}
