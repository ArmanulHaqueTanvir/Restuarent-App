import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:new_restuarent_app/components/button.dart';
import 'package:new_restuarent_app/components/myTextField.dart';

class LoginTab extends StatefulWidget {
  LoginTab({super.key});

  @override
  State<LoginTab> createState() => _LoginTabState();
}

class _LoginTabState extends State<LoginTab> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  // sign in method
  void singUserIn() async {
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
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
      padding: const EdgeInsets.only(
        top: 20,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            myTextField(
              controller: emailController,
              hintTitle: " Enter your gmail address",
              iconData: Icons.mail,
              validator: (value) => null,
            ),

            Gap(10),
            myTextField(
              controller: passwordController,
              hintTitle: " Enter your Password",
              iconData: Icons.lock,
              validator: (value) => null,
            ),
            const Gap(20),
            // ElevatedButton(
            //   onPressed: () {},
            //   child: Icon(
            //     Icons.fingerprint,
            //   ),
            // ),
            MyButton(
              text: "Log-in",
              onTap: singUserIn,
            ),
          ],
        ),
      ),
    );
  }
}
