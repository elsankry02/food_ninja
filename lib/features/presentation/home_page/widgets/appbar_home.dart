import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constant/app_colors.dart';
import '../../../../core/extension/extension.dart';
import '../../../data/cubit/change_theme_cubit.dart';
import '../../notifiaction_page/view/notifiaction_page.dart';
import '../../search_page/view/search_screen.dart';

class AppbarHome extends StatelessWidget {
  const AppbarHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );
    final theme = Theme.of(context);
    return Stack(
      children: [
        Image.asset(
          'assets/images/PatternTopRight.png',
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 60),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 31, right: 39),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Find Your \nFavorite Food',
                      style: context.kTextTheme.headlineSmall!.copyWith(
                          fontWeight: FontWeight.w700,
                          color: context.kChangeTheme.hintColor),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const Notifiactionpage(),
                        ),
                      ),
                      child: Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          color: Colors.white10,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: UnconstrainedBox(
                          child: SvgPicture.asset(
                              'assets/svg/Icon_Notifiaction.svg'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const SearchScreen(),
                        ),
                      ),
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        height: 50,
                        width: 300,
                        decoration: BoxDecoration(
                          color: theme.focusColor,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                'assets/svg/Icon_Search.svg',
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Opacity(
                                opacity: .40,
                                child: Text(
                                  'What do you want to order?',
                                  style: context.kTextTheme.labelMedium!
                                      .copyWith(
                                          color: AppColors.kArowBackground,
                                          fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const ChangeTheme(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ChangeTheme extends StatefulWidget {
  const ChangeTheme({super.key});

  @override
  State<ChangeTheme> createState() => _ChangeThemeState();
}

class _ChangeThemeState extends State<ChangeTheme> {
  bool themeChange = false;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return GestureDetector(
      onTap: () {
        setState(() {
          themeChange = !themeChange;
        });

        BlocProvider.of<ChangeThemeCubit>(context)
            .setChangeTheme(value: themeChange);
      },
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: theme.focusColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Icon(
            themeChange ? Icons.nightlight : Icons.brightness_high,
            color: themeChange ? Colors.white : Colors.amber[700],
          ),
        ),
      ),
    );
  }
}
