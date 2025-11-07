import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../../../core/components/custom_snakbar.dart';
import '../../../../../core/constant/app_colors.dart';
import '../../../../../core/extension/extension.dart';
import '../../../../data/models/special_deal_model.dart';
import 'special_deal_for_october_widget.dart';

class CarouselSliderWidget extends StatefulWidget {
  const CarouselSliderWidget({super.key});

  @override
  State<CarouselSliderWidget> createState() => _CarouselSliderWidgetState();
}

class _CarouselSliderWidgetState extends State<CarouselSliderWidget> {
  int curruntIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
          itemCount: specialDealItems.length,
          itemBuilder: (context, index, _) {
            return SpecialDealForOctoberWidget(
              index: index,
              onTap: () => ErrorMessage(context, message: "COMING SOON"),
            );
          },
          options: CarouselOptions(
            onPageChanged: (index, _) {
              setState(() {
                curruntIndex = index;
              });
            },
            autoPlay: true,
            height: context.height * 0.150,
            enlargeCenterPage: true,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(specialDealItems.length, (index) {
              return Container(
                margin: EdgeInsetsDirectional.only(end: 5),
                height: 8,
                width: curruntIndex == index ? 25 : 8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: curruntIndex == index
                      ? LinearGradient(
                          colors: [
                            AppColors.kPrimaryColor,
                            AppColors.kSecondColor,
                          ],
                        )
                      : LinearGradient(
                          colors: [AppColors.kGrey, AppColors.kGrey],
                        ),
                ),
              );
            }),
          ],
        ),
      ],
    );
  }
}
