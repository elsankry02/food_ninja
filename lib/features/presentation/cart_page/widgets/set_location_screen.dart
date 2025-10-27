import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constant/app_colors.dart';
import '../../../../core/extension/extension.dart';
import 'track_order_screen.dart';

class SetLocationScreen extends StatelessWidget {
  const SetLocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: SafeArea(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            Stack(
              children: [
                Image.asset(
                  width: double.infinity,
                  'assets/images/Maps.png',
                  fit: BoxFit.fill,
                ),
                Positioned(
                  top: 260,
                  left: 90,
                  child: Image.asset('assets/images/Pin_Radar.png'),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    children: [
                      const SizedBox(height: 20),
                      TextField(
                        style: const TextStyle(color: AppColors.kArowBack),
                        cursorColor: AppColors.kArowBack,
                        decoration: InputDecoration(
                          hintText: 'FInd Your Location',
                          hintStyle: context.kTextTheme.labelMedium!.copyWith(
                            color: AppColors.kArowBack,
                          ),
                          prefixIcon: UnconstrainedBox(
                            child: SvgPicture.asset(
                              'assets/svg/Icon_Search.svg',
                            ),
                          ),
                          filled: true,
                          fillColor: theme.primaryColor,
                          focusedBorder: outLineInputBorder(
                            theme: theme.primaryColor,
                          ),
                          enabledBorder: outLineInputBorder(
                            theme: theme.primaryColor,
                          ),
                        ),
                      ),
                      const SizedBox(height: 545),
                      Container(
                        padding: const EdgeInsets.only(
                          top: 24,
                          left: 10,
                          right: 10,
                        ),
                        height: 181,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22),
                          color: theme.primaryColor,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Deliver To',
                              // style: AppText.textstyle14Regular,
                            ),
                            const SizedBox(height: 14),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                UnconstrainedBox(
                                  child: SvgPicture.asset(
                                    'assets/svg/Icon_Location.svg',
                                  ),
                                ),
                                const SizedBox(width: 14),
                                Text(
                                  '8502 Preston Rd. Inglewood,\n Maine 98380',
                                  style: context.kTextTheme.titleSmall!
                                      .copyWith(
                                        fontWeight: FontWeight.w500,
                                        color: theme.hintColor,
                                      ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            GestureDetector(
                              onTap: () => Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const TrackOrderScreen(),
                                ),
                              ),
                              child: Container(
                                width: double.infinity,
                                height: 51,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: AppColors.kPrimaryColor,
                                ),
                                child: Center(
                                  child: Text(
                                    'Set Location',
                                    style: context.kTextTheme.titleSmall!
                                        .copyWith(
                                          fontWeight: FontWeight.w700,
                                          color: AppColors.kWhite,
                                        ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

OutlineInputBorder outLineInputBorder({required Color theme}) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(15),
    borderSide: BorderSide(color: theme),
  );
}
