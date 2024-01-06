import 'package:apps/src/features/authentication/controllers/sign_up_controller.dart';
// ignore: unused_import
import 'package:apps/src/features/authentication/models/credentail.dart';
// ignore: unused_import
import 'package:apps/src/features/authentication/screens/forget_password/forget_pass_otp/otp_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../constants/sizes.dart';
import '../../../../constants/text_string.dart';


class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    final _formKey = GlobalKey<FormState>();

    return Container(
      padding: const EdgeInsets.symmetric(vertical: tFormHeight - 10),
      child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: controller.fullName,
                decoration: const InputDecoration(
                  label: Text(tFullname),
                  prefixIcon: Icon(Icons.person_outline_rounded),
                ),
              ),
              const SizedBox(height: tFormHeight - 20),
              TextFormField(
                controller: controller.email,
                decoration: const InputDecoration(
                  label: Text(tEmail),
                  prefixIcon: Icon(Icons.email_outlined),
                ),
              ),
              const SizedBox(height: tFormHeight - 20),
              TextFormField(
                controller: controller.phoneNo,
                decoration: const InputDecoration(
                  label: Text(tPhoneNo),
                  prefixIcon: Icon(Icons.numbers),
                ),
              ),
              const SizedBox(height: tFormHeight - 20),
              TextFormField(
                controller: controller.password,
                decoration: const InputDecoration(
                  label: Text(tPassword),
                  prefixIcon: Icon(Icons.fingerprint),
                ),
              ),
              const SizedBox(height: tFormHeight - 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      /// For Email and Password Authentication

                      //SignUpController.instance.registerUser(
                      //    controller.email.text.trim(),
                      //    controller.password.text.trim());

                      /// For Phone Authentication

                      //SignUpController.instance
                      //  .phoneAuthentication(controller.phoneNo.text.trim());

                      ///Step-3 [Get User and pass it to Controller]

                      final user = UserModel(
                        email: controller.email.text.trim(),
                        password: controller.password.text.trim(),
                        fullName: controller.fullName.text.trim(),
                        phoneNo: controller.phoneNo.text.trim(),
                      );
                      SignUpController.instance
                          .createUser(user);

                      //Get.to(() => const OTPScreen());
                    }
                  },
                  child: Text(tSignUp.toUpperCase()),
                ),
              )
            ],
          )),
    );
  }
  
  //UserModel({required String email, required String password, required String fullName, required String phoneNo}) {}
}
