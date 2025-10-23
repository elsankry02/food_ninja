import 'package:flutter/material.dart';

import '../../../core/components/custom_primary_button.dart';
import '../../../core/constant/app_color.dart';
import '../../../core/extension/extension.dart';
import '../../data/model/onboarding_model.dart';
import '../sign_up_page/sign_up_page.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final pageController = PageController(initialPage: 0);
  int currentIndex = 0;
  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: pageController,
              onPageChanged: (value) {
                setState(() {
                  currentIndex = value;
                });
              },
              itemCount: onboardingItems.length,
              itemBuilder: (context, index) => Column(
                children: [
                  SizedBox(
                    height: context.height * 0.087,
                  ),
                  Image.asset(
                    onboardingItems[index].image,
                    width: double.infinity,
                    fit: BoxFit.fill,
                  ),
                  SizedBox(
                    height: context.height * 0.059,
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    onboardingItems[index].subTitel,
                    style: context.kTextTheme.titleLarge!.copyWith(
                        fontWeight: FontWeight.w700, color: AppColors.kTitle),
                  ),
                  SizedBox(
                    height: context.height * 0.020,
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    onboardingItems[index].titel,
                    style: context.kTextTheme.labelMedium!.copyWith(),
                  ),
                  SizedBox(
                    height: context.height * 0.042,
                  ),
                ],
              ),
            ),
          ),
          CustomPrimaryButton(
            title: 'Next',
            style: context.kTextTheme.titleSmall!
                .copyWith(color: AppColors.kWhite, fontWeight: FontWeight.w700),
            margin: EdgeInsetsDirectional.symmetric(
              horizontal: context.height * 0.109,
            ),
            padding: EdgeInsets.symmetric(vertical: context.height * 0.018),
            gradient: const LinearGradient(
              begin: AlignmentGeometry.topLeft,
              end: AlignmentGeometry.bottomRight,
              colors: [AppColors.kPrimaryColor, AppColors.kSecondColor],
            ),
            borderRadius: BorderRadius.circular(context.height * 0.015),
            onTap: () {
              if (currentIndex == onboardingItems.length - 1) {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SignUpPage(),
                  ),
                );
              }
              pageController.animateToPage(++currentIndex,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.linear);
            },
          ),
          SizedBox(
            height: context.height * 0.050,
          )
        ],
      ),
    );
  }
}
