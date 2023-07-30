import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:motto_help_agent/constants/app_colors.dart';
import 'package:motto_help_agent/constants/app_spacing.dart';
import 'package:motto_help_agent/constants/app_svgs.dart';
import 'package:motto_help_agent/views/history/complete.dart';
import 'package:motto_help_agent/widgets/app_text.dart';

class MyWallet extends StatelessWidget {
  const MyWallet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              decoration: const BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  )),
              child: Column(
                children: [
                  AppSpacing.heightSpace30,
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: SvgPicture.string(AppSvgs.backarrow)),
                        AppText(
                          text: "My Wallet",
                          color: const Color(0xff333333),
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            Image.asset(
                              "assets/images/photo.png",
                              height: 45,
                              width: 45,
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                  bottom: 2.5, right: 2.5),
                              height: 8,
                              width: 8,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xff00BB00),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  AppSpacing.heightSpace10,
                  Padding(
                    padding: const EdgeInsets.only(left: 18, right: 18),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              "assets/images/wallet_white.png",
                              height: 40,
                              width: 40,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            AppText(
                              text: "11,540",
                              color: const Color(0xffFFFFFF),
                              fontSize: 30,
                              fontWeight: FontWeight.w700,
                            ),
                          ],
                        ),
                        Image.asset(
                          "assets/images/dollar.png",
                          height: 40,
                          width: 40,
                        ),
                      ],
                    ),
                  ),
                  AppSpacing.heightSpace20,
                  Padding(
                    padding: const EdgeInsets.only(left: 18, right: 18),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppText(
                          text: "Your Balance",
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xff333333),
                        ),
                        AppText(
                          text: "Withdraw balance",
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xff333333),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            AppSpacing.heightSpace20,
            Padding(
              padding: AppSpacing.defaultPaddingAll,
              child: Column(
                children: [
                  Row(
                    children: [
                      AppText(
                        text: "Actions",
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ],
                  ),
                  AppSpacing.heightSpace10,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 130,
                        width: MediaQuery.of(context).size.width * 0.40,
                        decoration: BoxDecoration(
                            color: const Color(0xffC7C7F2),
                            borderRadius: BorderRadius.circular(28)),
                        child: Column(
                          children: [
                            AppSpacing.heightSpace10,
                            Padding(
                              padding: const EdgeInsets.only(left: 12),
                              child: Row(
                                children: [
                                  Image.asset(
                                    "assets/images/wallet_white.png",
                                    height: 33,
                                    width: 33,
                                    color: const Color(0xff333333),
                                  ),
                                ],
                              ),
                            ),
                            AppSpacing.heightSpace10,
                            AppText(
                              text: "Rs. 27,590",
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xff333333),
                            ),
                            AppSpacing.heightSpace10,
                            AppText(
                              text: "Total Withdraw",
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff333333),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 130,
                        width: MediaQuery.of(context).size.width * 0.40,
                        decoration: BoxDecoration(
                            color: const Color(0xffC7C7F2),
                            borderRadius: BorderRadius.circular(28)),
                        child: Column(
                          children: [
                            AppSpacing.heightSpace10,
                            Padding(
                              padding: const EdgeInsets.only(left: 12),
                              child: Row(
                                children: [
                                  Image.asset(
                                    "assets/images/wallet_white.png",
                                    height: 33,
                                    width: 33,
                                    color: const Color(0xff333333),
                                  ),
                                ],
                              ),
                            ),
                            AppSpacing.heightSpace10,
                            AppText(
                              text: "Rs. 39,590",
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xff333333),
                            ),
                            AppSpacing.heightSpace10,
                            AppText(
                              text: "Total Earn",
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff333333),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  AppSpacing.heightSpace20,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppText(
                        text: "Recants Earn:",
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xff333333),
                      ),
                      AppText(
                        text: "See all",
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff333333),
                      ),
                    ],
                  ),
                  AppSpacing.heightSpace20,
                  const Complete(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
