import 'package:flutter/material.dart';


import '../../../../constants/colors.dart';
import '../../../../constants/image_string.dart';
import '../../../../constants/sizes.dart';
import '../../../../constants/text_string.dart';
import '../SignUp/signup_screen.dart';
import '../login/login_screen.dart';

// ignore: unused_import
import 'package:get/get.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key, required String title});

  get tSecondarycolor => null;

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var height = mediaQuery.size.height;
    var brightness = mediaQuery.platformBrightness;
    
    final isDarkMode = brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: isDarkMode ? tSecondarycolor : tWhiteColor,  
      
      body: Container(
        padding: const EdgeInsets.all(tDefaultSize),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(
                image: const AssetImage(tWelcomeScreenImage),
                height: height * 0.6),
            Column(
              children: [
                Text(
                  tWelcomeTitle,
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                Text(
                  tWelcomeSubtitle,
                  style: Theme.of(context).textTheme.bodyLarge,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()),
                      );
                    },
                    child: Text(tlogin.toUpperCase()),
                  ),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                       Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUpScreen()),
                      );
                    },
                    child: Text(tsignup.toUpperCase()),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
