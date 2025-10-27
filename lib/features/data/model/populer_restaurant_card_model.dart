import '../../../core/constant/app_images.dart';

class PopulerRestaurantCardModel {
  final String image, title, subTitle;
  final double price;
  PopulerRestaurantCardModel({
    required this.price,
    required this.image,
    required this.title,
    required this.subTitle,
  });
}

List<PopulerRestaurantCardModel> populerRestaurantCardModel = [
  PopulerRestaurantCardModel(
    image: AppImages.kDefultPhoto,
    title: 'Healthy Food',
    subTitle: '18 Mins',
    price: 17.5,
  ),
  PopulerRestaurantCardModel(
    image: AppImages.kDefultPhoto,
    title: 'Smart Resto',
    subTitle: '17 Mins',
    price: 16,
  ),
  PopulerRestaurantCardModel(
    image: AppImages.kDefultPhoto,
    title: 'Vegan Resto',
    subTitle: '19 Mins',
    price: 21,
  ),
  PopulerRestaurantCardModel(
    image: AppImages.kDefultPhoto,
    title: 'Good Food',
    subTitle: '8 Mins',
    price: 14.5,
  ),
  PopulerRestaurantCardModel(
    image: AppImages.kDefultPhoto,
    title: 'Pizza',
    subTitle: '6 Mins',
    price: 25,
  ),
];
