import 'package:apps/src/constants/sizes.dart';
import 'package:apps/src/constants/text_string.dart';
import 'package:apps/src/features/authentication/screens/SignUp/signup_form_widget.dart';
import 'package:flutter/material.dart';

import '../../../../common_widgets/form/form_header_widget.dart';
import '../../../../constants/image_string.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tDefaultSize),
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const FormheaderWidget(
                  image: tLoginPageImage,
                  tittle: tSignUpTitle,
                  subtitle: tSignUpSubTitle,
                ),

                // signup_form_widget
                const SignUpFormWidget(),

                //LoginFooterWidget(),
                Column(
                  children: [
                    const Text("OR"),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton.icon(
                        onPressed: () {},
                        icon: const Image(
                          image: AssetImage(tGooglelogoImage),
                          width: 20.0,
                        ),
                        label: const Text(tSigninWithGoogle),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: tAlreadyHaveAnAccount,
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                            TextSpan(text: tlogin.toUpperCase()),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
