import 'package:flutter/material.dart';

import '../../../../core/constant/app_colors.dart';
import '../../../../core/extension/extension.dart';
import '../widget/textfield_search_screen_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            const TextFieldSearchScreenWidget(),
            SizedBox(
              height: context.height * 0.020,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: context.height * 0.025),
              child: Text(
                'Tybe',
                style: context.kTextTheme.titleSmall!,
              ),
            ),
            SizedBox(
              height: context.height * 0.020,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: context.height * 0.025),
              child: Row(
                children: [
                  const SearchResults(
                    result: 'Restaurant',
                  ),
                  SizedBox(
                    width: context.height * 0.020,
                  ),
                  const SearchResults(
                    result: 'Menu',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: context.height * 0.020,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: context.height * 0.025),
              child: Text(
                'Location',
                style: context.kTextTheme.titleSmall!,
              ),
            ),
            SizedBox(
              height: context.height * 0.020,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: context.height * 0.025),
              child: Row(
                children: [
                  const SearchResults(result: '1 Km'),
                  SizedBox(
                    width: context.height * 0.010,
                  ),
                  const SearchResults(result: '>10 Km'),
                  SizedBox(
                    width: context.height * 0.010,
                  ),
                  const SearchResults(result: '<10 Km'),
                ],
              ),
            ),
            SizedBox(
              height: context.height * 0.020,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: context.height * 0.025),
              child: Text(
                'Food',
                style: context.kTextTheme.titleSmall!,
              ),
            ),
            SizedBox(
              height: context.height * 0.020,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: context.height * 0.025),
              child: Column(
                children: [
                  Row(
                    children: [
                      const SearchResults(result: 'Cake'),
                      SizedBox(
                        width: context.height * 0.010,
                      ),
                      const SearchResults(result: 'Soup'),
                      SizedBox(
                        width: context.height * 0.010,
                      ),
                      const SearchResults(result: 'Main Course'),
                    ],
                  ),
                  SizedBox(
                    height: context.height * 0.020,
                  ),
                  Row(
                    children: [
                      const SearchResults(result: 'Appetizer'),
                      SizedBox(
                        width: context.height * 0.010,
                      ),
                      const SearchResults(result: 'Dessert'),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: context.height * 0.080,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: context.height * 0.025,
                  vertical: context.height * 0.025),
              child: Container(
                height: context.height * 0.057,
                width: context.height * 0.281,
                decoration: BoxDecoration(
                  color: AppColors.kPrimaryColor,
                  borderRadius: BorderRadius.circular(context.height * 0.022),
                ),
                child: Center(
                  child: Text(
                    'Search',
                    style: context.kTextTheme.titleSmall!
                        .copyWith(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SearchResults extends StatelessWidget {
  final String result;
  const SearchResults({super.key, required this.result});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: context.height * 0.020, vertical: context.height * 0.016),
      decoration: BoxDecoration(
        color: context.kChangeTheme.focusColor,
        borderRadius: BorderRadius.circular(context.height * 0.015),
      ),
      child: Center(
        child: Text(
          result,
          style: context.kTextTheme.labelMedium!
              .copyWith(color: AppColors.kArowBack),
        ),
      ),
    );
  }
}
