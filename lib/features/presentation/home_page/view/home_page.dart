import 'package:flutter/material.dart';

import '../../../data/model/populer_restaurant_card_model.dart';
import '../../popular_menu_page/widget/navigator_populer_menu_widget.dart';
import '../../popular_menu_page/widget/populer_card_menu_widget.dart';
import '../../popular_menu_page/widget/populer_restaurant_card_widget.dart';
import '../widgets/appbar_home.dart';
import '../widgets/home_container_image.dart';
import '../widgets/navigator_nearest_restaurant_widget.dart';
import '../widgets/voucher_promo_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        physics: const BouncingScrollPhysics(),
        children: [
          const AppbarHome(),
          GestureDetector(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const VoucherPromoScreen(),
            )),
            child: const HomeContainerImage(),
          ),
          const SizedBox(
            height: 25,
          ),
          const NavigatorNearestRestaurantWidget(),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 184,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.only(left: 25),
              scrollDirection: Axis.horizontal,
              itemCount: populerRestaurantCardModel.length,
              itemBuilder: (context, index) {
                return PopulerRestaurantCardWidget(
                  index: index,
                  right: 40,
                );
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const NavigatorPopulerMenuWidget(),
          const SizedBox(
            height: 20,
          ),
          const PopularCardMenuWidget(
            imageCard: 'assets/images/Green_Noddle.png',
            titelText: 'Green Noddle',
            supTitel: 'Noodle Home',
            price: r'$15',
          ),
          const SizedBox(
            height: 20,
          ),
          const PopularCardMenuWidget(
            imageCard: 'assets/images/Fruit_Salad.png',
            titelText: 'Fruit Salad',
            supTitel: 'Wijie Resto',
            price: r'$5',
          ),
          const SizedBox(
            height: 20,
          ),
          const PopularCardMenuWidget(
            imageCard: 'assets/images/Herbal_Pancake.png',
            titelText: 'Herbal Pancake',
            supTitel: 'Warung Herbal',
            price: r'$7',
          ),
        ],
      ),
    );
  }
}
