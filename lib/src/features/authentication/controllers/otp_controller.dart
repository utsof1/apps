import 'package:apps/src/features/authentication/screens/dashboard/dashboard.dart';
import 'package:apps/src/repository/authentication_repository/authentication_repo.dart';
import 'package:get/get.dart';

class OTPController extends GetxController {
  static OTPController get instance => Get.find();

  void verifyOTP(String otp) async {
    var isVerified = await AuthenticationRepository.instance.verifyOTP(otp);
    isVerified ? Get.offAll(const AppHome(title: 'otp-veify',)) : Get.back();
  }
}
