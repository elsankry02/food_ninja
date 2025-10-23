import 'package:flutter/material.dart';

import '../../../../core/extension/extension.dart';
import '../widgets/detail_menu.dart';
import '../widgets/detail_product.dart';
import '../widgets/massage_profile_widget.dart';
import '../widgets/profile_scroll_mode.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/PatternTopRight.png',
            width: double.infinity,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 60,
                ),
                Text(
                  'Profile',
                  style: context.kTextTheme.headlineSmall!
                      .copyWith(fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const ProfileScrollMode(),
                    ),
                  ),
                  child: const MassageProfileWidget(
                    image: 'assets/images/Photo.png',
                    title: 'Profile',
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const Detailproduct(),
                    ),
                  ),
                  child: const MassageProfileWidget(
                    image: 'assets/images/Photo_Restaurant.png',
                    title: 'Detail product',
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const DetailMenu(),
                    ),
                  ),
                  child: const MassageProfileWidget(
                    image: 'assets/images/Photo_Menu.png',
                    title: 'Detailmenu',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
