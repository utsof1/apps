import 'package:apps/src/features/authentication/screens/forget_password/forget_pass_options/forget_pass_model_button_sheet.dart';
import 'package:flutter/material.dart';

import '../../../../constants/text_string.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //mail
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.person_outline_outlined),
                labelText: 'E-mail',
                hintText: 'E-mail',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            //password
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.fingerprint),
                labelText: 'Password',
                hintText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                suffixIcon: const IconButton(
                  onPressed: null,
                  icon: Icon(Icons.remove_red_eye_sharp),
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            //forget password Btn
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  ForgetPasswordScreen.buildShowModalBottomSheet(context);
                },
                child: const Text('Forget Password ?'),
              ),
            ),
            // Log in Btn
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  tlogin.toUpperCase(),
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
