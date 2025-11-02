// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

/// generated route for
/// [CallRangingPage]
class CallRangingRoute extends PageRouteInfo<void> {
  const CallRangingRoute({List<PageRouteInfo>? children})
    : super(CallRangingRoute.name, initialChildren: children);

  static const String name = 'CallRangingRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const CallRangingPage();
    },
  );
}

/// generated route for
/// [CartPage]
class CartRoute extends PageRouteInfo<void> {
  const CartRoute({List<PageRouteInfo>? children})
    : super(CartRoute.name, initialChildren: children);

  static const String name = 'CartRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const CartPage();
    },
  );
}

/// generated route for
/// [ChatDetailsPage]
class ChatDetailsRoute extends PageRouteInfo<void> {
  const ChatDetailsRoute({List<PageRouteInfo>? children})
    : super(ChatDetailsRoute.name, initialChildren: children);

  static const String name = 'ChatDetailsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ChatDetailsPage();
    },
  );
}

/// generated route for
/// [ChatPage]
class ChatRoute extends PageRouteInfo<void> {
  const ChatRoute({List<PageRouteInfo>? children})
    : super(ChatRoute.name, initialChildren: children);

  static const String name = 'ChatRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ChatPage();
    },
  );
}

/// generated route for
/// [ConfirmOrderPage]
class ConfirmOrderRoute extends PageRouteInfo<void> {
  const ConfirmOrderRoute({List<PageRouteInfo>? children})
    : super(ConfirmOrderRoute.name, initialChildren: children);

  static const String name = 'ConfirmOrderRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ConfirmOrderPage();
    },
  );
}

/// generated route for
/// [EditLocationPage]
class EditLocationRoute extends PageRouteInfo<void> {
  const EditLocationRoute({List<PageRouteInfo>? children})
    : super(EditLocationRoute.name, initialChildren: children);

  static const String name = 'EditLocationRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const EditLocationPage();
    },
  );
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HomePage();
    },
  );
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
    : super(LoginRoute.name, initialChildren: children);

  static const String name = 'LoginRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const LoginPage();
    },
  );
}

/// generated route for
/// [MainPage]
class MainRoute extends PageRouteInfo<void> {
  const MainRoute({List<PageRouteInfo>? children})
    : super(MainRoute.name, initialChildren: children);

  static const String name = 'MainRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const MainPage();
    },
  );
}

/// generated route for
/// [NearestRestaurantPage]
class NearestRestaurantRoute extends PageRouteInfo<void> {
  const NearestRestaurantRoute({List<PageRouteInfo>? children})
    : super(NearestRestaurantRoute.name, initialChildren: children);

  static const String name = 'NearestRestaurantRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const NearestRestaurantPage();
    },
  );
}

/// generated route for
/// [NotifiactionPage]
class NotifiactionRoute extends PageRouteInfo<void> {
  const NotifiactionRoute({List<PageRouteInfo>? children})
    : super(NotifiactionRoute.name, initialChildren: children);

  static const String name = 'NotifiactionRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const NotifiactionPage();
    },
  );
}

/// generated route for
/// [OnboardingPage]
class OnboardingRoute extends PageRouteInfo<void> {
  const OnboardingRoute({List<PageRouteInfo>? children})
    : super(OnboardingRoute.name, initialChildren: children);

  static const String name = 'OnboardingRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const OnboardingPage();
    },
  );
}

/// generated route for
/// [OtpPage]
class OtpRoute extends PageRouteInfo<OtpRouteArgs> {
  OtpRoute({Key? key, required bool isSelected, List<PageRouteInfo>? children})
    : super(
        OtpRoute.name,
        args: OtpRouteArgs(key: key, isSelected: isSelected),
        initialChildren: children,
      );

  static const String name = 'OtpRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<OtpRouteArgs>();
      return OtpPage(key: args.key, isSelected: args.isSelected);
    },
  );
}

class OtpRouteArgs {
  const OtpRouteArgs({this.key, required this.isSelected});

  final Key? key;

  final bool isSelected;

  @override
  String toString() {
    return 'OtpRouteArgs{key: $key, isSelected: $isSelected}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! OtpRouteArgs) return false;
    return key == other.key && isSelected == other.isSelected;
  }

  @override
  int get hashCode => key.hashCode ^ isSelected.hashCode;
}

/// generated route for
/// [PaymentMethodPage]
class PaymentMethodRoute extends PageRouteInfo<void> {
  const PaymentMethodRoute({List<PageRouteInfo>? children})
    : super(PaymentMethodRoute.name, initialChildren: children);

  static const String name = 'PaymentMethodRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const PaymentMethodPage();
    },
  );
}

/// generated route for
/// [PopularMenuPage]
class PopularMenuRoute extends PageRouteInfo<void> {
  const PopularMenuRoute({List<PageRouteInfo>? children})
    : super(PopularMenuRoute.name, initialChildren: children);

  static const String name = 'PopularMenuRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const PopularMenuPage();
    },
  );
}

/// generated route for
/// [ProfilePage]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
    : super(ProfileRoute.name, initialChildren: children);

  static const String name = 'ProfileRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ProfilePage();
    },
  );
}

/// generated route for
/// [SetLocationPage]
class SetLocationRoute extends PageRouteInfo<void> {
  const SetLocationRoute({List<PageRouteInfo>? children})
    : super(SetLocationRoute.name, initialChildren: children);

  static const String name = 'SetLocationRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SetLocationPage();
    },
  );
}

/// generated route for
/// [SignUpPage]
class SignUpRoute extends PageRouteInfo<void> {
  const SignUpRoute({List<PageRouteInfo>? children})
    : super(SignUpRoute.name, initialChildren: children);

  static const String name = 'SignUpRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SignUpPage();
    },
  );
}

/// generated route for
/// [SignupProcessPage]
class SignupProcessRoute extends PageRouteInfo<void> {
  const SignupProcessRoute({List<PageRouteInfo>? children})
    : super(SignupProcessRoute.name, initialChildren: children);

  static const String name = 'SignupProcessRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SignupProcessPage();
    },
  );
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
    : super(SplashRoute.name, initialChildren: children);

  static const String name = 'SplashRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SplashPage();
    },
  );
}
