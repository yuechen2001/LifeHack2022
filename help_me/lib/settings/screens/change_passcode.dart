import 'package:flutter/material.dart';
import 'package:passwordfield/passwordfield.dart';

class ChangePasscode extends StatelessWidget {
  const ChangePasscode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Change Passcode"),
        ),
        body: ListView(children: [
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: PasswordField(
              color: Colors.blue,
              passwordConstraint: r'^[0-9]*$',
              inputDecoration: PasswordDecoration(),
              hasFloatingPlaceholder: true,
              floatingText: "Enter Old Passcode",
              hintText: "Enter 4 Digits",
              maxLength: 4,
              border: PasswordBorder(
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue.shade100,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue.shade100,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(width: 2, color: Colors.red.shade200),
                ),
              ),
              errorMessage: 'Should only contain 4 digits',
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: PasswordField(
              color: Colors.blue,
              passwordConstraint: r'^[0-9]*$',
              inputDecoration: PasswordDecoration(),
              hasFloatingPlaceholder: true,
              floatingText: "Enter New Passcode",
              hintText: "Enter 4 Digits",
              maxLength: 4,
              border: PasswordBorder(
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue.shade100,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue.shade100,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(width: 2, color: Colors.red.shade200),
                ),
              ),
              errorMessage: 'Should only contain 4 digits',
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: PasswordField(
              color: Colors.blue,
              passwordConstraint: r'^[0-9]*$',
              inputDecoration: PasswordDecoration(),
              hasFloatingPlaceholder: true,
              floatingText: "Re-Enter New Passcode",
              hintText: "Enter 4 Digits",
              maxLength: 4,
              border: PasswordBorder(
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue.shade100,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue.shade100,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(width: 2, color: Colors.red.shade200),
                ),
              ),
              errorMessage: 'Should only contain 4 digits',
            ),
          ),
        ]));
  }
}
