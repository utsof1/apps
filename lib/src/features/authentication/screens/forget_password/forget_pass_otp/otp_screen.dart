import 'package:apps/src/constants/sizes.dart';
import 'package:apps/src/constants/text_string.dart';
import 'package:apps/src/features/authentication/controllers/otp_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var otp;
    var otpController = Get.put(OTPController());
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(tDefaultSize),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              tOtpTitle,
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.bold,
                fontSize: 80.0,
              ),
            ),
            Text(tOtpSubTitle.toUpperCase(),
                style: Theme.of(context).textTheme.headline6),
            const SizedBox(height: 40.0),
            const Text("${tOtpMessage}support@anwar.com",
                textAlign: TextAlign.center),
            const SizedBox(
              height: 20.0,
            ),
            OtpTextField(
                numberOfFields: 6,
                fillColor: Colors.black.withOpacity(0.1),
                filled: true,
                //=> print("OTP is => $code")
                onSubmit: (code) {
                  otp = code;
                  OTPController.instance.verifyOTP(otp);
                }),
            const SizedBox(
              height: 20.0,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    OTPController.instance.verifyOTP(otp);
                  },
                  child: const Text(tNext)),
            )
          ],
        ),
      ),
    );
  }
}
