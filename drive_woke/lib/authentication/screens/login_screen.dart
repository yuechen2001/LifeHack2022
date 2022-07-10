import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:help_me/dashboard.dart';

import 'createNewAccount.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Column(
            children: [
              const Text("Drive Woke!",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 48)),
              const SizedBox(height: 8),
              Image.asset(
                'assets/images/login_image.jpg',
                height: 250,
                width: 300,
              ),
              TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  ),
                  labelText: 'User Name',
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: TextField(
                  obscureText: true,
                  controller: passwordController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    ),
                    labelText: 'Password',
                  ),
                ),
              ),
              const SizedBox(height: 8.0),
              const Text(
                'Forgot Password',
                style: TextStyle(color: Colors.lightBlue),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text("Don't have an account?"),
                  TextButton(
                    child: const Text(
                      'Register here',
                      style: TextStyle(color: Colors.black),
                    ),
                    onPressed: () {
                      //signup screen
                      Get.to(const CreateNewAccount());
                    },
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              GestureDetector(
                onTap: () => Get.to(DashboardPage()),
                child: Container(
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 211, 34),
                      borderRadius: BorderRadius.circular(10.0)),
                  width: double.infinity,
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    child: Text("Login",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 21,
                            color: Colors.black,
                            fontWeight: FontWeight.w600)),
                  ),
                ),
              ),
              const SizedBox(height: 40),
            ],
          )),
    );
  }
}
