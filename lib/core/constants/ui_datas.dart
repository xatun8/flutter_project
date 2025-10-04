import 'package:onboarding_screens/core/constants/app_assets.dart';
import 'package:onboarding_screens/data/model/onboard_model.dart';

class UiDatas {
  UiDatas._();
  static const List<OnboardModel> onboardDatas = [
    OnboardModel(
      image: AppAssets.onboard1,
      title: 'The Best Social Media App of the Century',
      description:
          'Lorem1 ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    ),
    OnboardModel(
      image: AppAssets.onboard2,
      title: 'Let\'s Connect with Everyone in the World',
      description:
          'Lorem3 ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    ),
    OnboardModel(
      image: AppAssets.onboard3,
      title: 'Everything You Can Do in the App',
      description:
          'Lorem3 ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    ),
  ];
}
