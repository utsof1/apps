import 'package:apps/src/features/authentication/screens/welcome/welcome_screen.dart';
import 'package:apps/src/repository/authentication_repository/authentication_repo.dart';
import 'package:apps/src/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';


// ignore: unused_import
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform).then((value) => Get.put(AuthenticationRepository()));
  runApp(const MyApp());
}

//await Firebase.initializeApp(
//   options: DefaultFirebaseOptions.currentPlatform,
//);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      //debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      transitionDuration: const Duration(milliseconds: 500),
      home: const WelcomeScreen(title: 'Flutter Demo Home Page'),
    );
  }
}

