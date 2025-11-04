import '../../../core/constant/app_images.dart';

class BeveragesModel {
  final String image, title, subTitle, price;

  BeveragesModel({
    required this.image,
    required this.title,
    required this.subTitle,
    required this.price,
  });
}

List<BeveragesModel> beveragesItems = [
  BeveragesModel(
    image: AppImages.kPepsiCan,
    title: "Pepsi Can",
    subTitle: "330ml, Price",
    price: "\$4.99",
  ),
  BeveragesModel(
    image: AppImages.kCocaColaCan,
    title: "Coca Cola Can",
    subTitle: "325ml, Price",
    price: "\$4.99",
  ),
  BeveragesModel(
    image: AppImages.kDietCoca,
    title: "Diet Coke",
    subTitle: "355ml, Price",
    price: "\$1.99",
  ),
  BeveragesModel(
    image: AppImages.kSpriteCan,
    title: "Sprite Can",
    subTitle: "355ml, Price",
    price: "\$1.50",
  ),
  BeveragesModel(
    image: AppImages.kAppleGrapeJuice,
    title: "Apple & Grape Juice",
    subTitle: "2l, Price",
    price: "\$15.99",
  ),
  BeveragesModel(
    image: AppImages.kOrangeJuice,
    title: "Orange Juice",
    subTitle: "2l, Price",
    price: "\$15.99",
  ),
];
