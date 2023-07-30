import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPageController extends GetxController {
  TextEditingController mobile = TextEditingController();
    TextEditingController password = TextEditingController();
     bool isObsecure = true;

  passwordHide() {
    isObsecure = !isObsecure;
    update();
  }

}
