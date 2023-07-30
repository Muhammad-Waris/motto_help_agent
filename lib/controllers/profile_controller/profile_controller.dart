import 'dart:io';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ProfilePageController extends GetxController {
  bool isSelected = true;
  File? image;
  getimage(ImageSource source) async {
    var result = await ImagePicker.platform.getImage(source: source);

    if (result == null) return;

    image = File(result.path);
    update();
  }

  changeVlue(bool value) {
    isSelected = value;
    update();
  }
}
