import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../../../core/constant/app_color.dart';
import '../../../core/constant/app_text.dart';
import '../cart_page/view/cart_page.dart';
import '../chat_page/views/chat_page.dart';
import '../home_page/view/home_page.dart';
import '../profile_page/view/profile_page.dart';

class NavBarPage extends StatefulWidget {
  const NavBarPage({super.key});

  @override
  State<NavBarPage> createState() => _NavBarPageState();
}

class _NavBarPageState extends State<NavBarPage> {
  int currentIndex = 0;

  List<Widget> tabs = [
    const HomePage(),
    const CartPage(),
    const Chat(),
    const Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: tabs.elementAt(currentIndex),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(22),
          child: SalomonBottomBar(
            margin: const EdgeInsets.all(10),
            itemPadding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 15,
            ),
            onTap: (int value) {
              setState(() {
                currentIndex = value;
              });
            },
            currentIndex: currentIndex,
            backgroundColor: theme.primaryColor,
            items: [
              SalomonBottomBarItem(
                selectedColor: AppColors.kPrimaryColor,
                icon: SvgPicture.asset('assets/svg/Home.svg'),
                title: Text(
                  'Home',
                  style: AppText.textStyle12Bold.copyWith(
                    color: theme.hintColor,
                  ),
                ),
              ),
              SalomonBottomBarItem(
                selectedColor: AppColors.kPrimaryColor,
                icon: SvgPicture.asset('assets/svg/Icon_Profile.svg'),
                title: Text(
                  'Profile',
                  style: AppText.textStyle12Bold.copyWith(
                    color: theme.hintColor,
                  ),
                ),
              ),
              SalomonBottomBarItem(
                selectedColor: AppColors.kPrimaryColor,
                icon: SvgPicture.asset('assets/svg/Icon_Cart.svg'),
                title: Text(
                  'Cart',
                  style: AppText.textStyle12Bold.copyWith(
                    color: theme.hintColor,
                  ),
                ),
              ),
              SalomonBottomBarItem(
                selectedColor: AppColors.kPrimaryColor,
                icon: SvgPicture.asset(
                  'assets/svg/Chat.svg',
                  colorFilter: const ColorFilter.mode(
                    AppColors.kPrimaryColor,
                    BlendMode.srcIn,
                  ),
                ),
                title: Text(
                  'Chat',
                  style: AppText.textStyle12Bold.copyWith(
                    color: theme.hintColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
