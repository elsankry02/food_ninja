class NearestRestaurantModel {
  final String imageCard;
  final String titelText;
  final String supTitel;

  NearestRestaurantModel(
      {required this.imageCard,
      required this.titelText,
      required this.supTitel});
}

List<NearestRestaurantModel> restaurantList = [
  NearestRestaurantModel(
    imageCard: 'assets/images/ResturantVagan.png',
    titelText: 'Vegan Resto',
    supTitel: '12 Mins',
  ),
  NearestRestaurantModel(
    imageCard: 'assets/images/Restaurant_Cheef.png',
    titelText: 'Vegan Resto',
    supTitel: '8 Mins',
  ),
  NearestRestaurantModel(
    imageCard: 'assets/images/ResturantVagan.png',
    titelText: 'Vegan Resto',
    supTitel: '12 Mins',
  ),
  NearestRestaurantModel(
    imageCard: 'assets/images/Restaurant_Cheef.png',
    titelText: 'Vegan Resto',
    supTitel: '8 Mins',
  ),
];
