import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomSwitch extends StatelessWidget {
  bool val;
  void Function(bool value) onChangedMethod;

  CustomSwitch({super.key, required this.onChangedMethod, required this.val});

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 0.7,
      child: CupertinoSwitch(
        activeColor: const Color(0xff008000),
        trackColor: Colors.grey,
        value: val,
        onChanged: onChangedMethod,
      ),
    );
  }
}
