import '../../../core/constant/app_images.dart';

class PopulerRestaurantCardModel {
  final String image, title, subTitle, price;

  PopulerRestaurantCardModel({
    required this.price,
    required this.image,
    required this.title,
    required this.subTitle,
  });
}

List<PopulerRestaurantCardModel> populerRestaurantCardModel = [
  PopulerRestaurantCardModel(
    image: AppImages.kMeat,
    title: 'Healthy Food',
    subTitle: '18 Mins',
    price: "17.5",
  ),
  PopulerRestaurantCardModel(
    image: AppImages.kMeat,
    title: 'Smart Resto',
    subTitle: '17 Mins',
    price: "16",
  ),
  PopulerRestaurantCardModel(
    image: AppImages.kMeat,
    title: 'Vegan Resto',
    subTitle: '19 Mins',
    price: "21",
  ),
];
