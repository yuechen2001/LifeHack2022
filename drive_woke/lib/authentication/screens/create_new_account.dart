import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../screens/dashboard.dart';

class CreateNewAccount extends StatefulWidget {
  const CreateNewAccount({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _CreateNewAccount();
}

class _CreateNewAccount extends State<CreateNewAccount> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 211, 34),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 255, 211, 34),
          elevation: 0,
          leading: GestureDetector(
            onTap: () async {},
            child: const Icon(
              Icons.arrow_back_ios_new,
              color: Color.fromARGB(255, 255, 211, 34),
            ),
          ),
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
                      padding: const EdgeInsets.symmetric(
                          vertical: 16.0, horizontal: 32),
                      child: Column(
                        children: [
                          const Text(
                              "Stay awake while driving starting from today!",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 24)),
                          Image.asset(
                            'assets/images/create_account_image.jpg',
                            height: 150,
                            width: 200,
                          ),
                          const SizedBox(height: 16.0),
                          TextField(
                            controller: nameController,
                            decoration: InputDecoration(
                              floatingLabelStyle:
                                  const TextStyle(color: Colors.black),
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
                              labelText: 'User Name',
                            ),
                          ),
                          const SizedBox(height: 8.0),
                          TextField(
                            obscureText: true,
                            controller: passwordController,
                            decoration: InputDecoration(
                              floatingLabelStyle:
                                  const TextStyle(color: Colors.black),
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
                              labelText: 'Email',
                            ),
                          ),
                          const SizedBox(height: 8.0),
                          TextField(
                            controller: nameController,
                            decoration: InputDecoration(
                              floatingLabelStyle:
                                  const TextStyle(color: Colors.black),
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
                              labelText: 'Password',
                            ),
                          ),
                          const SizedBox(height: 8.0),
                          TextField(
                            obscureText: true,
                            controller: passwordController,
                            decoration: InputDecoration(
                              floatingLabelStyle:
                                  const TextStyle(color: Colors.black),
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
                              labelText: 'Re-Enter Password',
                            ),
                          ),
                          const SizedBox(height: 28.0),
                          GestureDetector(
                            onTap: () {
                              Get.back();
                              Get.to(DashboardPage());
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 255, 211, 34),
                                  borderRadius: BorderRadius.circular(10.0)),
                              width: double.infinity,
                              child: const Padding(
                                padding: EdgeInsets.symmetric(vertical: 8.0),
                                child: Text("Sign Up",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 21,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600)),
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),
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
                          const SizedBox(height: 16),
                        ],
                      )))),
        ));
  }
}
