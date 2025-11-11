import '../../../core/constant/app_images.dart';

class GroceriesModel {
  final String image, title, subTitle, price, description;

  GroceriesModel({
    required this.image,
    required this.title,
    required this.subTitle,
    required this.price,
    required this.description,
  });
}

List<GroceriesModel> groceriesModel = [
  GroceriesModel(
    image: AppImages.kBeefBone,
    title: "Beef Bone",
    subTitle: "1kg, Price",
    price: r"$4.99",
    description:
        "Fresh beef bones rich in flavor, perfect for making hearty soups and broths. High in nutrients and ideal for slow-cooked recipes.",
  ),
  GroceriesModel(
    image: AppImages.kBroilerChicken,
    title: "Broiler Chicken",
    subTitle: "1kg, Price",
    price: r"$4.99",
    description:
        "Tender and juicy broiler chicken, great for roasting, grilling, or frying. Sourced from premium quality farms for a delicious meal.",
  ),
  GroceriesModel(
    image: AppImages.kRice,
    title: "Rice",
    subTitle: "1kg, Price",
    price: r"$2.99",
    description:
        "Finest quality long-grain rice that cooks fluffy and aromatic. Perfect for daily meals, biryani, or fried rice.",
  ),
  GroceriesModel(
    image: AppImages.kPulses,
    title: "Pulses",
    subTitle: "1kg, Price",
    price: r"$4.99",
    description:
        "High-protein pulses packed with nutrients. Ideal for soups, salads, and traditional dishes. 100% natural and organic.",
  ),
  GroceriesModel(
    image: AppImages.kEggChickenRed,
    title: "Egg Chicken Red",
    subTitle: "4pcs, Price",
    price: r"$1.99",
    description:
        "Farm-fresh red chicken eggs with a rich taste and high nutritional value. Perfect for breakfast, baking, or cooking.",
  ),
  GroceriesModel(
    image: AppImages.kEggChickenWhite,
    title: "Egg Chicken White",
    subTitle: "180g, Price",
    price: r"$1.50",
    description:
        "Fresh white chicken eggs with a mild taste, ideal for everyday meals and recipes. High in protein and essential nutrients.",
  ),
  GroceriesModel(
    image: AppImages.kEggPasta,
    title: "Egg Pasta",
    subTitle: "30gm, Price",
    price: r"$15.99",
    description:
        "Classic egg pasta made with real eggs for a rich, smooth texture. Cooks quickly and pairs perfectly with any sauce.",
  ),
  GroceriesModel(
    image: AppImages.kEggNoodles,
    title: "Egg Noodles",
    subTitle: "2L, Price",
    price: r"$15.99",
    description:
        "Delicious and soft egg noodles crafted with high-quality ingredients. Perfect for stir-fries, soups, or Asian dishes.",
  ),
  GroceriesModel(
    image: AppImages.kMayonnaisEggless,
    title: "Mayonnais Eggless",
    subTitle: "325ml, Price",
    price: r"$4.99",
    description:
        "Smooth and creamy eggless mayonnaise, perfect for sandwiches, salads, and dips. Suitable for vegetarians.",
  ),
  GroceriesModel(
    image: AppImages.kRoundCutEggNoodles,
    title: "Egg Noodles",
    subTitle: "330ml, Price",
    price: r"$4.99",
    description:
        "Round-cut egg noodles made for those who love rich flavor and firm texture. Great for soups or quick meals.",
  ),
  GroceriesModel(
    image: AppImages.kGinger,
    title: "Ginger",
    subTitle: "250gm, Price",
    price: r"$4.99",
    description:
        "Fresh aromatic ginger root used for cooking and natural remedies. Adds spice, flavor, and health benefits to your meals.",
  ),
  GroceriesModel(
    image: AppImages.kBellPepperRed,
    title: "Bell Pepper Red",
    subTitle: "1kg, Price",
    price: r"$4.99",
    description:
        "Bright red bell peppers full of vitamins and antioxidants. Sweet, crunchy, and perfect for salads, grilling, or stir-fries.",
  ),
  GroceriesModel(
    image: AppImages.kRedApple,
    title: "Red Apple",
    subTitle: "1kg, Price",
    price: r"$4.99",
    description:
        "Crisp, juicy red apples packed with natural sweetness. Great for snacking, baking, or juicing.",
  ),
  GroceriesModel(
    image: AppImages.kOrganicBananas,
    title: "Organic Bananas",
    subTitle: "12kg, Price",
    price: r"$3.00",
    description:
        "Naturally sweet organic bananas, rich in potassium and fiber. Ideal for smoothies, snacks, and desserts.",
  ),
];
