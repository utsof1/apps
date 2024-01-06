import 'package:apps/src/constants/sizes.dart';
import 'package:apps/src/features/authentication/screens/login/login_form_widget.dart';
import 'package:flutter/material.dart';

import 'login_footer_widget.dart';
import 'login_header_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tDefaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                // Section 1 [login_header_widget]
                LoginheaderWidget(
                  size: size,
                ),

                // Section 2 [login_form_widget]
                const LoginForm(),

                //Section 3  [login_footer_widget]
                const LoginFooterWidget(),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
