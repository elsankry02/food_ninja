import 'package:food_ninja/core/constant/app_images.dart';

class PopulerRestaurantCardModel {
  final String imageCard;
  final String titelText;
  final String subTitel;

  PopulerRestaurantCardModel({
    required this.imageCard,
    required this.titelText,
    required this.subTitel,
  });
}

List<PopulerRestaurantCardModel> populerRestaurantCardModel = [
  PopulerRestaurantCardModel(
    imageCard: AppImages.kIconLocation,
    titelText: 'Good Food',
    subTitel: '22 Mins',
  ),
  PopulerRestaurantCardModel(
    imageCard: AppImages.kIconLocation,
    titelText: 'Healthy Food',
    subTitel: '24 Mins',
  ),
  PopulerRestaurantCardModel(
    imageCard: AppImages.kIconLocation,
    titelText: 'Smart Resto',
    subTitel: '5 Mins',
  ),
  PopulerRestaurantCardModel(
    imageCard: AppImages.kIconLocation,
    titelText: 'Vegan Resto',
    subTitel: '9 Mins',
  ),
  PopulerRestaurantCardModel(
    imageCard: AppImages.kIconLocation,
    titelText: 'Good Food',
    subTitel: '13 Mins',
  ),
  PopulerRestaurantCardModel(
    imageCard: AppImages.kIconLocation,
    titelText: 'Healthy Food',
    subTitel: '18 Mins',
  ),
  PopulerRestaurantCardModel(
    imageCard: AppImages.kIconLocation,
    titelText: 'Smart Resto',
    subTitel: '17 Mins',
  ),
  PopulerRestaurantCardModel(
    imageCard: AppImages.kIconLocation,
    titelText: 'Vegan Resto',
    subTitel: '19 Mins',
  ),
  PopulerRestaurantCardModel(
    imageCard: AppImages.kIconLocation,
    titelText: 'Good Food',
    subTitel: '8 Mins',
  ),
  PopulerRestaurantCardModel(
    imageCard: AppImages.kIconLocation,
    titelText: 'pizza',
    subTitel: '6 Mins',
  ),
];
