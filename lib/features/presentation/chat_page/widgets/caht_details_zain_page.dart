import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constant/app_colors.dart';
import '../../../../core/constant/app_text.dart';
import '../../../../core/extension/extension.dart';
import 'call_ranging.dart';
import 'chat_widget.dart';

class CahtDetailsDianneRussellPage extends StatelessWidget {
  const CahtDetailsDianneRussellPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomChatDetailsWidget(
        onTapCall: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const CallRanging()));
        },
        titelPerson: 'Zain',
        assetNamePerson: 'assets/images/Zain.png',
      ),
    );
  }
}

class CustomChatDetailsWidget extends StatelessWidget {
  const CustomChatDetailsWidget(
      {super.key,
      required this.titelPerson,
      required this.assetNamePerson,
      this.onTapCall});
  final String titelPerson;
  final String assetNamePerson;
  final void Function()? onTapCall;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "AppImages.kPattern",
            fit: BoxFit.fill,
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: Navigator.of(context).pop,
                    child: SvgPicture.asset('assets/svg/Icon_Back.svg'),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Chat',
                    style: context.kTextTheme.headlineSmall!.copyWith(
                        fontWeight: FontWeight.w700,
                        color: context.kChangeTheme.hintColor),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 13, vertical: 20),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      color: theme.primaryColor,
                    ),
                    child: ListTile(
                      leading: Image.asset(
                        assetNamePerson,
                        width: 62,
                        height: 62,
                      ),
                      title: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            titelPerson,
                            style: context.kTextTheme.titleSmall!
                                .copyWith(fontWeight: FontWeight.w500),
                          ),
                          Row(
                            children: [
                              SvgPicture.asset('assets/svg/Ellipse_184.svg'),
                              const SizedBox(
                                width: 4,
                              ),
                              const Text(
                                'Online',
                                style: AppText.textstyle14Regular,
                              ),
                            ],
                          ),
                        ],
                      ),
                      trailing: GestureDetector(
                        onTap: onTapCall,
                        child: SvgPicture.asset('assets/svg/Call_Logo.svg'),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  ChatWidget(
                    titel: 'Just to order',
                    textColor: theme.hintColor,
                    containerColor: theme.primaryColor,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ChatWidget(
                        titel: 'Okay, for what level of spiciness?',
                        textColor: Colors.white,
                        containerColor: AppColors.kPrimaryColor,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ChatWidget(
                    titel: 'Okay, wait a minute 👍',
                    textColor: theme.hintColor,
                    containerColor: theme.primaryColor,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ChatWidget(
                        titel: "Okay I'm waiting  👍",
                        textColor: Colors.white,
                        containerColor: AppColors.kPrimaryColor,
                      ),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      color: theme.primaryColor,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Okay I'm waiting  👍",
                          style: AppText.textstyle14Regular
                              .copyWith(color: theme.hintColor),
                        ),
                        SvgPicture.asset('assets/svg/Icon_Send.svg'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
