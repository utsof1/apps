import 'package:apps/src/features/authentication/models/credentail.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// Step-2 [User Repository to perform database Operation]

class UserRepository extends GetxController {
 static UserRepository get instance => Get.find();

 final _db = FirebaseFirestore.instance;

 createUser(UserModel user) async {
    try {
      await _db.collection("Users").add(user.toJson());
      Get.snackbar(
        "Success", "Your account has been created.",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.green.withOpacity(0.1),
        duration: const Duration(seconds: 4),
        colorText: Colors.green,
      );
    } catch (e) {
      Get.snackbar("error", "Something went wrong, try again.",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.redAccent.withOpacity(0.1),
          duration: const Duration(seconds: 4),
          colorText: Colors.red);
      print("ERROR - $e");
    }
 }
}

//class UserRepository extends GetxController {
//  static UserRepository get instance => Get.find();
//
//  final _db = FirebaseFirestore.instance;
//
//  createUser(UserModel user) async {
//    await _db.collection("Users").add(user.toJson()).whenComplete(
//      () => Get.snackbar(
//        "Success", "Your account has been created.",
//        snackPosition: SnackPosition.BOTTOM,
//        backgroundColor: Colors.green.withOpacity(0.1),
//        duration: const Duration(seconds: 4),
//        colorText: Colors.green,
//      ),
//     ).catchError((error, stackTrace) {
//      Get.snackbar("error", "Something went wrong,try again.",
//          snackPosition: SnackPosition.BOTTOM,
//          backgroundColor: Colors.redAccent.withOpacity(0.1),
//          duration: const Duration(seconds: 4),
//          colorText: Colors.red);
//      print(error.toString());
//    });
//  }
//}
