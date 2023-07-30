import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motto_help_agent/views/registeration/signup.dart';
import '../../constants/app_colors.dart';
import '../../constants/app_spacing.dart';
import '../../controllers/registeration_controllers/loginController.dart';
import '../../utils/app_navigation.dart';
import '../../widgets/app_button.dart';
import '../../widgets/app_input_field.dart';
import '../../widgets/app_text.dart';
import '../main_pages/main_page.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        elevation: 0.2,
        title: AppText(
          text: "Login",
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: AppSpacing.defaultPaddingAll,
              child: Image.asset("assets/images/login.png"),
            ),
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, -3),
                        color: Color.fromARGB(255, 243, 238, 238),
                        spreadRadius: 0,
                        blurRadius: 20),
                  ],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  )),
              child: GetBuilder<LoginPageController>(
                  init: LoginPageController(),
                  builder: (controller) {
                    return Padding(
                      padding: AppSpacing.defaultPaddingAll,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppText(
                            text: "Login",
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                          AppSpacing.heightSpace10,
                          AppText2(
                            text:
                                "Enter the required information to login & get full access",
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey,
                          ),
                          AppSpacing.heightSpace40,
                          AppInputField(
                            hintText: "Mobile number",
                          ),
                          AppInputField(
                            hintText: "Enter Password",
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              InkWell(
                                onTap: () {},
                                child: AppText(
                                  text: "Forgot password?",
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: const Color(0xff14163F),
                                ),
                              )
                            ],
                          ),
                          AppSpacing.heightSpace20,
                          AppButton(
                              btnText: "Login",
                              ontap: () {
                                AppNavigations.to(context,
                                    nextScreen: MainPage());
                              }),
                          AppSpacing.heightSpace10,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              AppText(
                                text: "Don’t have an account?",
                                color: const Color(0xff666666),
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              ),
                              InkWell(
                                onTap: () {
                                  AppNavigations.to(context,
                                      nextScreen: const Signup());
                                },
                                child: AppText(
                                  text: " Sign Up",
                                  color: const Color(0xff333333),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
