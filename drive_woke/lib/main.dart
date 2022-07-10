import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:help_me/authentication/screens/login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Stay Woke';

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        // title: 'Stay Woke',
        home: Scaffold(
            backgroundColor: const Color.fromARGB(255, 255, 211, 34),
            appBar: AppBar(
              backgroundColor: const Color.fromARGB(255, 255, 211, 34),
              elevation: 0,
            ),
            body: Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50.0),
                          topRight: Radius.circular(50.0)),
                      color: Colors.white),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 32.0, right: 32.0),
                    child: LoginPage(),
                  ),
                ))));
  }
}
