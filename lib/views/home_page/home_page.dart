import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_spacing.dart';
import '../../constants/app_svgs.dart';
import '../../controllers/confirm_payment/confirm_payment_controller.dart';
import '../../utils/app_navigation.dart';
import '../../widgets/app_button.dart';
import '../../widgets/app_input_field.dart';
import '../../widgets/app_text.dart';
import '../main_pages/main_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/images/location.png",
                ),
                fit: BoxFit.cover)),
        child: Padding(
          padding: AppSpacing.defaultPaddingAll,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                        height: 27,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SvgPicture.string(AppSvgs.backarrow),
                        )),
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
                        margin: const EdgeInsets.only(bottom: 2.5, right: 2.5),
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
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width * 0.43,
                      decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                          borderRadius: BorderRadius.circular(6)),
                      child: Center(
                        child: AppText(
                          text: "Customer Location",
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              AppSpacing.heightSpace30,
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.75,
                  child: AppButton(
                    btnText: "Go for Help",
                    ontap: () {
                      showModalBottomSheet(
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30)),
                          ),
                          backgroundColor: Colors.white,
                          isScrollControlled: true,
                          context: context,
                          builder: (builder) {
                            return const Agent();
                          });
                    },
                  )),
              AppSpacing.heightSpace20,
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 40,
                    width: 44,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: Center(
                      child: SvgPicture.string(AppSvgs.direction),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Agent extends StatelessWidget {
  const Agent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.70,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AppSpacing.heightSpace30,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppText(
                  text: "Customer Details",
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Center(
                    child: Icon(
                      Icons.close,
                      color: Color(0xff303030),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 4,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.88,
              child: const Divider(
                color: Color(0xffF0F0F0),
                thickness: 2,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Row(
              children: [
                Image.asset(
                  "assets/images/agent.png",
                  height: 70,
                  width: 70,
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      text: "jacob Jones",
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                    AppText(
                      text: "Mesa, New Jersey 45463",
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff9B9B9B),
                    )
                  ],
                ),
                const Spacer(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      text: "Budget",
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff666666),
                    ),
                    AppText(
                      text: "\$10/hr",
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xff333333),
                    )
                  ],
                ),
              ],
            ),
            AppSpacing.heightSpace10,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      text: "Contact Number",
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff666666),
                    ),
                    AppSpacing.heightSpace10,
                    AppText(
                      text: "(480) 555-0103",
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xff333333),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: const Color(0xffFFDFAE),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Center(
                        child: SvgPicture.string(AppSvgs.call),
                      ),
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: const Color(0xffDDFDD5),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Center(
                        child: SvgPicture.string(AppSvgs.share),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            AppSpacing.heightSpace20,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppText2(
                  text: "Distance",
                  fontWeight: FontWeight.w700,
                ),
                Container(
                  height: 37,
                  width: MediaQuery.of(context).size.width * 0.30,
                  decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(12)),
                  child: Center(
                    child: AppText(
                      text: "3km away",
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            AppSpacing.heightSpace10,
            Row(
              children: [
                AppText(
                  text: "Problem Details",
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff000000),
                ),
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.88,
              child: const Divider(
                color: Color(0xffF0F0F0),
                thickness: 1,
              ),
            ),
            AppText(
              text:
                  "Lorem ipsum dolor sit amet consectetur. Mattis consequat quisque porttitor lectus quam tortor tellus eget. Orci sed porta purus odio duis faucibus sagittis fames tempus.",
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: const Color(0xff858585),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.33,
                    height: 55,
                    decoration: BoxDecoration(
                      color: const Color(0xffE0E0E0),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: AppText(
                        text: "Cancel",
                        color: const Color(0xffA3A3A3),
                        fontSize: 18,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.33,
                    child: AppButton(
                        btnText: "Confirm",
                        ontap: () {
                          showModalBottomSheet(
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    topRight: Radius.circular(30)),
                              ),
                              backgroundColor: Colors.white,
                              isScrollControlled: true,
                              context: context,
                              builder: (builder) {
                                return const MottoHelp();
                              });
                        }),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MottoHelp extends StatelessWidget {
  const MottoHelp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.50,
      child: Padding(
        padding: AppSpacing.defaultPaddingAll,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AppSpacing.heightSpace30,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppText(
                  text: "Your Motto Help has arrived",
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Center(
                    child: Icon(
                      Icons.close,
                      color: Color(0xff303030),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 4,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.88,
              child: const Divider(
                color: Color(0xffF0F0F0),
                thickness: 2,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Row(
              children: [
                Image.asset(
                  "assets/images/agent.png",
                  height: 70,
                  width: 70,
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      text: "jacob Jones",
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                    AppText(
                      text: "Mesa, New Jersey 45463",
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff9B9B9B),
                    )
                  ],
                ),
                const Spacer(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      text: "Budget",
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff666666),
                    ),
                    AppText(
                      text: "\$10/hr",
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xff333333),
                    )
                  ],
                ),
              ],
            ),
            AppSpacing.heightSpace10,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      text: "Contact Number",
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff666666),
                    ),
                    AppSpacing.heightSpace10,
                    AppText(
                      text: "(480) 555-0103",
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xff333333),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: const Color(0xffFFDFAE),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Center(
                        child: SvgPicture.string(AppSvgs.call),
                      ),
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: const Color(0xffDDFDD5),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Center(
                        child: SvgPicture.string(AppSvgs.share),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            AppSpacing.heightSpace30,
            AppButton(
                btnText: "Recieved Customer",
                ontap: () {
                  showModalBottomSheet(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30)),
                      ),
                      backgroundColor: Colors.white,
                      isScrollControlled: true,
                      context: context,
                      builder: (builder) {
                        return const CompleteService();
                      });
                }),
          ],
        ),
      ),
    );
  }
}

class CompleteService extends StatelessWidget {
  const CompleteService({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.80,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 15,
          right: 15,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AppSpacing.heightSpace30,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppText(
                  text: "Complete Your Service",
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Center(
                    child: Icon(
                      Icons.close,
                      color: Color(0xff303030),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 4,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.88,
              child: const Divider(
                color: Color(0xffF0F0F0),
                thickness: 2,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Row(
              children: [
                AppText(
                  text: "Total Service fee:",
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xff333333),
                ),
              ],
            ),
            AppSpacing.heightSpace10,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText2(
                        text: "Bulb",
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                      ),
                      AppSpacing.heightSpace10,
                      AppText2(
                        text: "Set belt",
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                      ),
                      AppSpacing.heightSpace10,
                      AppText2(
                        text: "2 ltr Petrol",
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                      ),
                      AppSpacing.heightSpace10,
                      AppText2(
                        text: "Service fee",
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                      ),
                      AppSpacing.heightSpace10,
                      AppText2(
                        text: "Delivery Charge",
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                      ),
                      AppSpacing.heightSpace10,
                      AppText2(
                        text: "+VAT",
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                      ),
                      AppSpacing.heightSpace10,
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText2(
                        text: "Rs.550",
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                      ),
                      AppSpacing.heightSpace10,
                      AppText2(
                        text: "Rs.850",
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                      ),
                      AppSpacing.heightSpace10,
                      AppText2(
                        text: "Rs.450",
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                      ),
                      AppSpacing.heightSpace10,
                      AppText2(
                        text: "Rs.500",
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                      ),
                      AppSpacing.heightSpace10,
                      AppText2(
                        text: "N/A",
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                      ),
                      AppSpacing.heightSpace10,
                      AppText2(
                        text: "N/A",
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                      ),
                      AppSpacing.heightSpace10,
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.88,
              child: const Divider(
                color: Color(0xffF0F0F0),
                thickness: 2,
              ),
            ),
            AppSpacing.heightSpace10,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppText(
                  text: "Grand total:",
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xff333333),
                ),
                AppText(
                  text: "Rs. 2,050.00",
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xff333333),
                ),
              ],
            ),
            AppSpacing.heightSpace10,
            Row(
              children: [
                AppText2(
                  text: "Choose payment getaway:",
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xff333333),
                ),
              ],
            ),
            AppSpacing.heightSpace10,
            GetBuilder<ConfirmPaymentPageController>(
                init: ConfirmPaymentPageController(),
                builder: (controller) {
                  return Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: AppButton2(
                              borderColor: Colors.transparent,
                              textColor: controller.selectedIndex == 0
                                  ? Colors.white
                                  : Colors.white,
                              color: controller.selectedIndex == 0
                                  ? AppColors.primaryColor
                                  : const Color(0xffE0E0E0),
                              onTap: () {
                                controller.changeIndex(0);
                              },
                              borderRadius: 25,
                              height: 125,
                              text: "",
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Image.asset(
                                    "assets/images/cash_payment.png",
                                    height: 50,
                                    width: 50,
                                    color: controller.selectedIndex == 0
                                        ? const Color(0xff333333)
                                        : const Color(0xff858585),
                                  ),
                                  AppText2(
                                    text: "Cash Payment",
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: controller.selectedIndex == 0
                                        ? const Color(0xff333333)
                                        : const Color(0xff858585),
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          Expanded(
                            child: AppButton2(
                              borderColor: Colors.transparent,
                              textColor: controller.selectedIndex == 1
                                  ? const Color(0xffE0E0E0)
                                  : const Color(0xff858585),
                              color: controller.selectedIndex == 1
                                  ? AppColors.primaryColor
                                  : const Color(0xffE0E0E0),
                              onTap: () {
                                controller.changeIndex(1);
                              },
                              borderRadius: 25,
                              height: 125,
                              text: "",
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Image.asset(
                                    "assets/images/online_payment.png",
                                    height: 50,
                                    width: 50,
                                    color: controller.selectedIndex == 1
                                        ? const Color(0xff333333)
                                        : const Color(0xff858585),
                                  ),
                                  AppText2(
                                    text: "Online Payment",
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: controller.selectedIndex == 1
                                        ? const Color(0xff333333)
                                        : const Color(0xff858585),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      AppSpacing.heightSpace20,
                    ],
                  );
                }),
            AppButton(
                btnText: "Confirm Payment",
                ontap: () {
                  showDialog(
                    context: context,
                    builder: (_) => AlertDialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            InkWell(
                              onTap: () {
                                AppNavigations.to(context,
                                    nextScreen: MainPage());
                              },
                              child: Container(
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xffDFDFDF)),
                                  child:
                                      const Center(child: Icon(Icons.close))),
                            ),
                          ],
                        ),
                        content: SizedBox(
                          height: 220,
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/images/confirm.png",
                                height: 80,
                                width: 80,
                              ),
                              AppText(
                                text: "Thank You",
                                color: const Color(0xff58D74E),
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                              ),
                              AppText(
                                text: "for accepting our servcie",
                                color: const Color(0xffAEAEAE),
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                              AppSpacing.heightSpace10,
                              AppText(
                                text: "Agent will reach you seen",
                                color: const Color(0xff333333),
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                              AppSpacing.heightSpace20,
                              InkWell(
                                onTap: () {
                                  AppNavigations.to(context,
                                      nextScreen: MainPage());
                                },
                                child: AppText(
                                  text: "Go to Home Page",
                                  color: AppColors.primaryColor,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                  textUnderline: TextDecoration.underline,
                                ),
                              )
                            ],
                          ),
                        )),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
