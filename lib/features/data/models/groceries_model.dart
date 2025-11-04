import '../../../core/constant/app_images.dart';

class GroceriesModel {
  final String image, title, subTitle, price;

  GroceriesModel({
    required this.image,
    required this.title,
    required this.subTitle,
    required this.price,
  });
}

List<GroceriesModel> groceriesModel = [
  GroceriesModel(
    image: AppImages.kBeefBone,
    title: "Beef Bone",
    subTitle: "1kg, Price",
    price: r"$4.99",
  ),
  GroceriesModel(
    image: AppImages.kBroilerChicken,
    title: "Broiler Chicken",
    subTitle: "1kg, Price",
    price: r"$4.99",
  ),
  GroceriesModel(
    image: AppImages.kRice,
    title: "Rice",
    subTitle: "1kg, Price",
    price: r"$2.99",
  ),
  GroceriesModel(
    image: AppImages.kPulses,
    title: "Pulses",
    subTitle: "1kg, Price",
    price: r"$4.99",
  ),
  GroceriesModel(
    image: AppImages.kEggChickenRed,
    title: "Egg Chicken Red",
    subTitle: "4pcs, Price",
    price: r"$1.99",
  ),
  GroceriesModel(
    image: AppImages.kEggChickenWhite,
    title: "Egg Chicken White",
    subTitle: "180g, Price",
    price: r"$1.50",
  ),
  GroceriesModel(
    image: AppImages.kEggPasta,
    title: "Egg Pasta",
    subTitle: "30gm, Price",
    price: r"$15.99",
  ),
  GroceriesModel(
    image: AppImages.kEggNoodles,
    title: "Egg Noodles",
    subTitle: "2L, Price",
    price: r"$15.99",
  ),
  GroceriesModel(
    image: AppImages.kMayonnaisEggless,
    title: "Mayonnais Eggless",
    subTitle: "325ml, Price",
    price: r"$4.99",
  ),
  GroceriesModel(
    image: AppImages.kRoundCutEggNoodles,
    title: "Egg Noodles",
    subTitle: "330ml, Price",
    price: r"$4.99",
  ),
  GroceriesModel(
    image: AppImages.kGinger,
    title: "Ginger",
    subTitle: "250gm, Priceg",
    price: r"$4.99",
  ),
  GroceriesModel(
    image: AppImages.kBellPepperRed,
    title: "Bell Pepper Red",
    subTitle: "1kg, Price",
    price: r"$4.99",
  ),
  GroceriesModel(
    image: AppImages.kRedApple,
    title: "Red Apple",
    subTitle: "1kg, Price",
    price: r"$4.99",
  ),
  GroceriesModel(
    image: AppImages.kOrganicBananas,
    title: "Organic Bananas",
    subTitle: "12kg, Price",
    price: r"$3.00",
  ),
];
