import 'package:apps/src/features/authentication/screens/forget_password/forget_pass_mail/forget_pass_mail.dart';
import 'package:flutter/material.dart';

import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_string.dart';
import '../forget_pass_phone/forget_pass_phone.dart';
import 'forget_pass_btn_widget.dart';

class ForgetPasswordScreen {
  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      builder: (context) => Container(
        padding: EdgeInsets.all(tDefaultSize),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tForgotPasswordTitle,
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              tForgotPasswordSubTitle,
              style: Theme.of(context).textTheme.bodyText2,
            ),
            const SizedBox(
              height: 30.0,
            ),
            ForgetPasswordBtnWidget(
              btnIcon: Icons.mail_outline_rounded,
              tittle: tEmail,
              subTitle: tResetViaEmail,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ForgetPasswordMailScreen()),
                );
              },
            ),
            const SizedBox(height: 20.0),
            ForgetPasswordBtnWidget(
              btnIcon: Icons.mobile_friendly_rounded,
              tittle: tPhoneNo,
              subTitle: tResetViaPhone,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ForgetPasswordPhoneScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
