import 'package:apps/src/features/authentication/models/credentail.dart';
import 'package:apps/src/features/authentication/screens/forget_password/forget_pass_otp/otp_screen.dart';
import 'package:apps/src/repository/authentication_repository/authentication_repo.dart';
import 'package:apps/src/repository/user_repository/user_repository.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  //get data from textfield
  final email = TextEditingController();
  final password = TextEditingController();
  final fullName = TextEditingController();
  final phoneNo = TextEditingController();

  final userRepo = Get.put(UserRepository());

  //call this function from design and it will do the logic
  void registerUser(String email, String password) {
    String? error = AuthenticationRepository.instance
        .createUserWithEmailAndPassword(email, password) as String?;
    if (error != null) {
      Get.showSnackbar(GetSnackBar(message: error.toString()));
    }
  }

  // Get Phone number from user and pass it to Auth Repository for Firebase Authentication
  Future<void> createUser(UserModel user) async {
    await userRepo.createUser(user);
    phoneAuthentication(user.phoneNo);
    Get.to(() => const OTPScreen());
  }

  void phoneAuthentication(String phoneNo) {
    AuthenticationRepository.instance.phoneAuthentication(phoneNo);
  }
}
