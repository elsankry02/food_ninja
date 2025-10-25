import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constant/app_colors.dart';
import '../../../../core/constant/app_text.dart';
import '../../../../core/extension/extension.dart';
import 'card_textimonials_widget.dart';
import 'populer_menu_profile_widget.dart';
import 'top_details_widget.dart';

class Detailproduct extends StatefulWidget {
  const Detailproduct({super.key});

  @override
  State<Detailproduct> createState() => _DetailproductState();
}

class _DetailproductState extends State<Detailproduct> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        physics: const BouncingScrollPhysics(),
        children: [
          Stack(
            children: [
              Image.asset('assets/images/Photo_Restaurant.png'),
              Padding(
                padding: const EdgeInsets.only(top: 358),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.zero,
                      width: double.infinity,
                      height: 1000,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                        ),
                        color: theme.scaffoldBackgroundColor,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            Center(
                              child: SvgPicture.asset(
                                  'assets/svg/Scrooll_Tools.svg'),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const TopDetailsWidget(),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Wijie Bar and Resto',
                              style:
                                  context.kTextTheme.headlineMedium!.copyWith(
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                        'assets/svg/Icon_map_pin.svg'),
                                    const SizedBox(width: 10),
                                    const Text(
                                      '19 Km',
                                      style: AppText.textstyle14Regular,
                                    ),
                                  ],
                                ),
                                const SizedBox(width: 20),
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                        'assets/svg/Icon_Star.svg'),
                                    const SizedBox(width: 10),
                                    const Text('4,8 Rating',
                                        style: AppText.textstyle14Regular),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Most whole Alaskan Red King Crabs get broken down into\n legs, claws, and lump meat. We offer all of these options\n as well in our online shop, but there is nothing like getting\n the whole . . . .',
                              style: context.kTextTheme.labelMedium,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Popular Menu',
                                  style: context.kTextTheme.titleSmall!
                                      .copyWith(fontWeight: FontWeight.w700),
                                ),
                                Text(
                                  'ViewAll',
                                  style: context.kTextTheme.labelMedium!
                                      .copyWith(
                                          color: AppColors.kArowBackground),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              height: 171,
                              child: ListView(
                                physics: const BouncingScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                children: const [
                                  PopulerMenuProfileWidget(
                                    blurImage:
                                        'assets/images/image_opacity_meat.png',
                                    imageAssets: 'assets/images/image_Meat.png',
                                    title: 'Spacy fresh crab',
                                    subTitle: r'12 $',
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  PopulerMenuProfileWidget(
                                    blurImage:
                                        'assets/images/image_opacity_pizza.png',
                                    imageAssets:
                                        'assets/images/image_Pizza.png',
                                    title: 'Spacy fresh crab',
                                    subTitle: r'16 $',
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  PopulerMenuProfileWidget(
                                    blurImage:
                                        'assets/images/image_opacity_meat.png',
                                    imageAssets: 'assets/images/image_Meat.png',
                                    title: 'Spacy fresh crab',
                                    subTitle: r'12 $',
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  PopulerMenuProfileWidget(
                                    blurImage:
                                        'assets/images/image_opacity_pizza.png',
                                    imageAssets:
                                        'assets/images/image_Pizza.png',
                                    title: 'Spacy fresh crab',
                                    subTitle: r'16 $',
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Testimonials',
                              style: context.kTextTheme.titleSmall!
                                  .copyWith(fontWeight: FontWeight.w700),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const CardTextimonialsWidget(
                              titel: 'Assel',
                              imageAssets: 'assets/images/Assel.png',
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const CardTextimonialsWidget(
                              titel: 'Qassem',
                              imageAssets: 'assets/images/Qassem.png',
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const CardTextimonialsWidget(
                              titel: 'Zain',
                              imageAssets: 'assets/images/Zain.png',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
