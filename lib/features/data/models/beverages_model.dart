import '../../../core/constant/app_images.dart';

class BeveragesModel {
  final String image, title, subTitle, price, description;

  BeveragesModel({
    required this.image,
    required this.title,
    required this.subTitle,
    required this.price,
    required this.description,
  });
}

List<BeveragesModel> beveragesItems = [
  BeveragesModel(
    image: AppImages.kPepsiCan,
    title: "Pepsi Can",
    subTitle: "330ml, Price",
    price: "\$4.99",
    description:
        "Pepsi is a refreshing carbonated soft drink with a bold cola flavor and just the right amount of sweetness. Perfect for cooling down on a hot day or pairing with your favorite meal.",
  ),
  BeveragesModel(
    image: AppImages.kCocaColaCan,
    title: "Coca Cola Can",
    subTitle: "325ml, Price",
    price: "\$4.99",
    description:
        "Coca-Cola delivers a timeless classic cola taste with a perfect balance of sweetness and carbonation. A favorite drink that refreshes and uplifts any occasion.",
  ),
  BeveragesModel(
    image: AppImages.kDietCoca,
    title: "Diet Coke",
    subTitle: "355ml, Price",
    price: "\$1.99",
    description:
        "Diet Coke offers the same great Coca-Cola taste with zero sugar and fewer calories. Light, crisp, and refreshing for any time of the day.",
  ),
  BeveragesModel(
    image: AppImages.kSpriteCan,
    title: "Sprite Can",
    subTitle: "355ml, Price",
    price: "\$1.50",
    description:
        "Sprite is a lemon-lime flavored soda that delivers a clean, crisp, and refreshing experience. Perfect for quenching your thirst with a burst of citrus flavor.",
  ),
  BeveragesModel(
    image: AppImages.kAppleGrapeJuice,
    title: "Apple & Grape Juice",
    subTitle: "2l, Price",
    price: "\$15.99",
    description:
        "A delicious blend of sweet apples and juicy grapes, this 2-liter bottle of natural fruit juice is rich in vitamins and perfect for sharing with family or friends.",
  ),
  BeveragesModel(
    image: AppImages.kOrangeJuice,
    title: "Orange Juice",
    subTitle: "2l, Price",
    price: "\$15.99",
    description:
        "Freshly squeezed orange juice packed with vitamin C and natural sweetness. Enjoy it chilled for a refreshing and healthy drink any time of day.",
  ),
];
