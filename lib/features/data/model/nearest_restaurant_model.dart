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
    image: AppImages.kMeat,
    title: 'Good Food',
    subTitle: '22 Mins',
  ),
  NearestRestaurantModel(
    image: AppImages.kMeat,
    title: 'Healthy Food',
    subTitle: '24 Mins',
  ),
  NearestRestaurantModel(
    image: AppImages.kMeat,
    title: 'Smart Resto',
    subTitle: '5 Mins',
  ),
  NearestRestaurantModel(
    image: AppImages.kMeat,
    title: 'Vegan Resto',
    subTitle: '9 Mins',
  ),
];
