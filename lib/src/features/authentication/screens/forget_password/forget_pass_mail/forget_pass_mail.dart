import 'package:apps/src/common_widgets/form/form_header_widget.dart';
import 'package:apps/src/constants/sizes.dart';
import 'package:apps/src/constants/text_string.dart';
import 'package:flutter/material.dart';

import '../../../../../constants/image_string.dart';
import '../forget_pass_otp/otp_screen.dart';

class ForgetPasswordMailScreen extends StatelessWidget {
  const ForgetPasswordMailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tDefaultSize),
            child: Column(
              children: [
                const SizedBox(height: tDefaultSize * 4),
                const FormheaderWidget(
                  image: tForgotPasswordImage,
                  tittle: tForgotPassword,
                  subtitle: tForgetMailSubtitle,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  heightBetween: 30.0,
                  textAline: TextAlign.center,
                ),
                const SizedBox(height: tFormHeight),
                Form(
                  child: Column(
                    children: [
                      const TextField(
                        decoration: InputDecoration(
                          label: Text(tEmail),
                          hintText: tEmail,
                          prefixIcon: Icon(Icons.mail_outline_rounded),
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const OTPScreen()),
                      );
                            }, child: Text(tNext)),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
