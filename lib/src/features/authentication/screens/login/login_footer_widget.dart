import 'package:flutter/material.dart';

import '../../../../constants/image_string.dart';
import '../../../../constants/text_string.dart';

class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text('OR'),
        const SizedBox(height: 20),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            icon: const Image(
              image: AssetImage(tGooglelogoImage),
              width: 20.0,
            ),
            onPressed: () {},
            label: const Text(tSigninWithGoogle),
          ),
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: () {},
          child: Text.rich(
            TextSpan(
              text: tDontHaveAnAccount,
              style: Theme.of(context).textTheme.bodyText1,
              children: const [
                TextSpan(
                  text: tsignup,
                  style: TextStyle(color: Colors.blue),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
