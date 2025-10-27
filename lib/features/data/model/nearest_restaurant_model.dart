import '../../../core/constant/app_images.dart';

class NearestRestaurantModel {
  final String image, title, subTitle;

  NearestRestaurantModel({
    required this.image,
    required this.title,
    required this.subTitle,
  });
}

List<NearestRestaurantModel> nearestRestaurantitem = [
  NearestRestaurantModel(
    image: AppImages.kDefultPhoto,
    title: 'Good Food',
    subTitle: '22 Mins',
  ),
  NearestRestaurantModel(
    image: AppImages.kDefultPhoto,
    title: 'Healthy Food',
    subTitle: '24 Mins',
  ),
  NearestRestaurantModel(
    image: AppImages.kDefultPhoto,
    title: 'Smart Resto',
    subTitle: '5 Mins',
  ),
  NearestRestaurantModel(
    image: AppImages.kDefultPhoto,
    title: 'Vegan Resto',
    subTitle: '9 Mins',
  ),
  NearestRestaurantModel(
    image: AppImages.kDefultPhoto,
    title: 'Good Food',
    subTitle: '13 Mins',
  ),
  NearestRestaurantModel(
    image: AppImages.kDefultPhoto,
    title: 'Healthy Food',
    subTitle: '18 Mins',
  ),
  NearestRestaurantModel(
    image: AppImages.kDefultPhoto,
    title: 'Smart Resto',
    subTitle: '17 Mins',
  ),
  NearestRestaurantModel(
    image: AppImages.kDefultPhoto,
    title: 'Vegan Resto',
    subTitle: '19 Mins',
  ),
  NearestRestaurantModel(
    image: AppImages.kDefultPhoto,
    title: 'Good Food',
    subTitle: '8 Mins',
  ),
  NearestRestaurantModel(
    image: AppImages.kDefultPhoto,
    title: 'pizza',
    subTitle: '6 Mins',
  ),
];
