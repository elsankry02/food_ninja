import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:food_ninja/features/presentation/login_in_page/view/login_page.dart';
import 'package:food_ninja/features/presentation/main_page/cart_page/view/cart_page.dart';
import 'package:food_ninja/features/presentation/main_page/cart_page/view/confirm_order_page.dart';
import 'package:food_ninja/features/presentation/main_page/cart_page/view/edit_location_page.dart';
import 'package:food_ninja/features/presentation/main_page/cart_page/view/edit_payment_page.dart';
import 'package:food_ninja/features/presentation/main_page/chat_page/views/call_ranging_page.dart';
import 'package:food_ninja/features/presentation/main_page/chat_page/views/chat_details_page.dart';
import 'package:food_ninja/features/presentation/main_page/chat_page/views/chat_page.dart';
import 'package:food_ninja/features/presentation/main_page/home_page/view/home_page.dart';
import 'package:food_ninja/features/presentation/main_page/home_page/view/nearest_restaurant_page.dart';
import 'package:food_ninja/features/presentation/main_page/home_page/view/popular_menu_page.dart';
import 'package:food_ninja/features/presentation/main_page/main_page.dart';
import 'package:food_ninja/features/presentation/main_page/profile_page/view/profile_page.dart';
import 'package:food_ninja/features/presentation/notifiaction_page/view/notifiaction_page.dart';
import 'package:food_ninja/features/presentation/onboarding_page/onboarding_page.dart';
import 'package:food_ninja/features/presentation/otp_page/view/otp_page.dart';
import 'package:food_ninja/features/presentation/set_location_page/view/set_location_page.dart';
import 'package:food_ninja/features/presentation/sign_up_page/view/sign_up_page.dart';
import 'package:food_ninja/features/presentation/sign_up_page/view/signup_process_page.dart';
import 'package:food_ninja/features/presentation/splash_page/splash_page.dart';

part 'router.gr.dart';

final router = AppRouter();

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: SplashRoute.page, initial: true),
    AutoRoute(page: SignUpRoute.page),
    AutoRoute(page: SignupProcessRoute.page),
    AutoRoute(page: SetLocationRoute.page),
    AutoRoute(page: OtpRoute.page),
    AutoRoute(page: OnboardingRoute.page),
    AutoRoute(page: ProfileRoute.page),
    AutoRoute(page: HomeRoute.page),
    AutoRoute(page: NearestRestaurantRoute.page),
    AutoRoute(page: PopularMenuRoute.page),
    AutoRoute(page: ChatRoute.page),
    AutoRoute(page: CallRangingRoute.page),
    AutoRoute(page: CartRoute.page),
    AutoRoute(page: ConfirmOrderRoute.page),
    AutoRoute(page: EditLocationRoute.page),
    AutoRoute(page: PaymentMethodRoute.page),
    AutoRoute(page: LoginRoute.page),
    AutoRoute(page: MainRoute.page),
    AutoRoute(page: NotifiactionRoute.page),
  ];
}
