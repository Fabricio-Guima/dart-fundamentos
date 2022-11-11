import 'package:flutter/material.dart';
import 'package:quitanda/src/auth/components/customTextField.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Column(children: [
        Expanded(
          child: Container(
            color: Colors.red,
          ),
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 32, vertical: 40),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(40))),
            child: Column(
              children: [
                //email
                CustomTextField(
                  icon: Icons.email,
                  label: 'Email',
                ),
                //senha
                CustomTextField(
                  icon: Icons.lock,
                  label: 'Senha',
                  isSecret: true,
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
