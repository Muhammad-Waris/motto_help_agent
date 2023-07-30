import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupPageController extends GetxController {
  TextEditingController name = TextEditingController();
  TextEditingController number = TextEditingController();
  TextEditingController password = TextEditingController();

  bool isObsecure = true;
  bool isObsecure2 = true;

  passwordHide() {
    isObsecure = !isObsecure;
    update();
  }

  passwordHide2() {
    isObsecure2 = !isObsecure2;
    update();
  }
}
