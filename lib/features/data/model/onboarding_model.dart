import '../../../core/constant/app_images.dart';

class OnBoardingModel {
  final String image;
  final String subTitel;
  final String titel;

  OnBoardingModel(
      {required this.image, required this.subTitel, required this.titel});
}

final List<OnBoardingModel> onboardingItems = [
  OnBoardingModel(
    image: AppImages.kOnboardingOne,
    subTitel: 'Find your Comfort\nFood here',
    titel:
        'Here You Can find a chef or dish for every\n taste and color. Enjoy!',
  ),
  OnBoardingModel(
    image: AppImages.kOnboardingTwo,
    subTitel: 'Food Ninja is Where Your\n Comfort Food Lives',
    titel: 'Enjoy a fast and smooth food delivery at\n your doorstep',
  ),
];
