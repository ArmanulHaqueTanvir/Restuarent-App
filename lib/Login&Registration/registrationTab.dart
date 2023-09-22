import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:new_restuarent_app/components/button.dart';
import 'package:new_restuarent_app/components/myTextField.dart';

class RegistrationTab extends StatefulWidget {
  RegistrationTab({super.key});

  @override
  State<RegistrationTab> createState() => _RegistrationTabState();
}

class _RegistrationTabState extends State<RegistrationTab> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final userNameController = TextEditingController();

  // sign in method
  void singUserUp() async {
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailController.text, password: passwordController.text);

      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      // wrong email
      showErrorMessage(e.code);
    }

    // ignore: use_build_context_synchronously
    Navigator.pop(context);
  }

  void showErrorMessage(String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Center(
            child: Text(
              message,
              style: const TextStyle(color: Colors.red),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            myTextField(
              controller: userNameController,
              hintTitle: " Enter your fullname",
              iconData: Icons.person,
              validator: (value) => null,
            ),
            myTextField(
              controller: emailController,
              hintTitle: " Enter your gmail address",
              iconData: Icons.mail,
              validator: (value) => null,
            ),
            myTextField(
              controller: passwordController,
              hintTitle: " Enter your Password",
              iconData: Icons.lock,
              validator: (value) => null,
            ),
            const Gap(20),
            MyButton(text: "Registration", onTap: singUserUp),
          ],
        ),
      ),
    );
  }
}
