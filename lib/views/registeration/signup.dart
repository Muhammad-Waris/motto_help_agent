import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:motto_help_agent/constants/app_spacing.dart';
import 'package:motto_help_agent/constants/app_svgs.dart';
import 'package:motto_help_agent/utils/app_navigation.dart';
import 'package:motto_help_agent/views/main_pages/main_page.dart';
import 'package:motto_help_agent/views/registeration/login.dart';
import 'package:motto_help_agent/widgets/app_button.dart';
import 'package:motto_help_agent/widgets/app_input_field.dart';

import '../../constants/app_colors.dart';
import '../../controllers/registeration_controllers/signupController.dart';
import '../../widgets/app_text.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        leading: Padding(
          padding: const EdgeInsets.all(17.0),
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: SvgPicture.string(
              AppSvgs.backarrow,
            ),
          ),
        ),
        elevation: 0.2,
        title: AppText(
          text: "Signup",
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: AppSpacing.defaultPaddingAll,
          child: GetBuilder<SignupPageController>(
              init: SignupPageController(),
              builder: (controller) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      text: "Signup",
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xff000000),
                    ),
                    AppText(
                      text: "Enter the required information to signup",
                      color: const Color(0xffBABABA),
                    ),
                    AppSpacing.heightSpace40,
                    AppInputField(
                      hintText: "Enter your full name",
                      prefixIcon: const Icon(Icons.person_2_outlined),
                      controller: controller.name,
                    ),
                    AppSpacing.heightSpace20,
                    AppInputField(
                      hintText: "Enter your phone number",
                      prefixIcon: const Icon(Icons.phone),
                      controller: controller.number,
                    ),
                    AppSpacing.heightSpace20,
                    AppInputField(
                      hintText: "Enter password",
                      prefixIcon: const Icon(Icons.lock_outline),
                      obscureText: controller.isObsecure,
                      controller: controller.password,
                      suffixIcon: InkWell(
                        onTap: () {
                          controller.passwordHide();
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Icon(
                            controller.isObsecure
                                ? Icons.visibility_off
                                : Icons.visibility,
                            size: 22,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    AppSpacing.heightSpace20,
                    AppInputField(
                      hintText: "Confirm password",
                      prefixIcon: const Icon(Icons.lock_outline),
                      obscureText: controller.isObsecure2,
                      suffixIcon: InkWell(
                        onTap: () {
                          controller.passwordHide2();
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Icon(
                            controller.isObsecure2
                                ? Icons.visibility_off
                                : Icons.visibility,
                            size: 22,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    AppSpacing.heightSpace40,
                    AppButton2(
                      text: "Save",
                      color: AppColors.primaryColor,
                      textColor: Colors.white,
                      onTap: () {
                        AppNavigations.to(context, nextScreen: MainPage());
                      },
                    ),
                    AppSpacing.heightSpace20,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AppText(
                          text: "Already have an account? ",
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff666666),
                        ),
                        InkWell(
                          onTap: () {
                            AppNavigations.to(context,
                                nextScreen: const Login());
                          },
                          child: AppText(
                            text: "Login",
                            color: const Color(0xff000000),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    )
                  ],
                );
              }),
        ),
      ),
    );
  }
}
