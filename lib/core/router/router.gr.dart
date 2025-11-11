// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

/// generated route for
/// [BeveragesPage]
class BeveragesRoute extends PageRouteInfo<void> {
  const BeveragesRoute({List<PageRouteInfo>? children})
    : super(BeveragesRoute.name, initialChildren: children);

  static const String name = 'BeveragesRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const BeveragesPage();
    },
  );
}

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
/// [FavouritePage]
class FavouriteRoute extends PageRouteInfo<void> {
  const FavouriteRoute({List<PageRouteInfo>? children})
    : super(FavouriteRoute.name, initialChildren: children);

  static const String name = 'FavouriteRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const FavouritePage();
    },
  );
}

/// generated route for
/// [GroceriesPage]
class GroceriesRoute extends PageRouteInfo<void> {
  const GroceriesRoute({List<PageRouteInfo>? children})
    : super(GroceriesRoute.name, initialChildren: children);

  static const String name = 'GroceriesRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const GroceriesPage();
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
/// [OrderLocationPage]
class OrderLocationRoute extends PageRouteInfo<void> {
  const OrderLocationRoute({List<PageRouteInfo>? children})
    : super(OrderLocationRoute.name, initialChildren: children);

  static const String name = 'OrderLocationRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const OrderLocationPage();
    },
  );
}

/// generated route for
/// [OrdersPage]
class OrdersRoute extends PageRouteInfo<void> {
  const OrdersRoute({List<PageRouteInfo>? children})
    : super(OrdersRoute.name, initialChildren: children);

  static const String name = 'OrdersRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const OrdersPage();
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
/// [PersonalDetailsPage]
class PersonalDetailsRoute extends PageRouteInfo<void> {
  const PersonalDetailsRoute({List<PageRouteInfo>? children})
    : super(PersonalDetailsRoute.name, initialChildren: children);

  static const String name = 'PersonalDetailsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const PersonalDetailsPage();
    },
  );
}

/// generated route for
/// [ProductDetailsPage]
class ProductDetailsRoute extends PageRouteInfo<ProductDetailsRouteArgs> {
  ProductDetailsRoute({
    Key? key,
    required String image,
    required String title,
    required String subTitle,
    required String price,
    required String description,
    List<PageRouteInfo>? children,
  }) : super(
         ProductDetailsRoute.name,
         args: ProductDetailsRouteArgs(
           key: key,
           image: image,
           title: title,
           subTitle: subTitle,
           price: price,
           description: description,
         ),
         initialChildren: children,
       );

  static const String name = 'ProductDetailsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ProductDetailsRouteArgs>();
      return ProductDetailsPage(
        key: args.key,
        image: args.image,
        title: args.title,
        subTitle: args.subTitle,
        price: args.price,
        description: args.description,
      );
    },
  );
}

class ProductDetailsRouteArgs {
  const ProductDetailsRouteArgs({
    this.key,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.price,
    required this.description,
  });

  final Key? key;

  final String image;

  final String title;

  final String subTitle;

  final String price;

  final String description;

  @override
  String toString() {
    return 'ProductDetailsRouteArgs{key: $key, image: $image, title: $title, subTitle: $subTitle, price: $price, description: $description}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ProductDetailsRouteArgs) return false;
    return key == other.key &&
        image == other.image &&
        title == other.title &&
        subTitle == other.subTitle &&
        price == other.price &&
        description == other.description;
  }

  @override
  int get hashCode =>
      key.hashCode ^
      image.hashCode ^
      title.hashCode ^
      subTitle.hashCode ^
      price.hashCode ^
      description.hashCode;
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
