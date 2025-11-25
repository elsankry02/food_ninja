import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en')
  ];

  /// No description provided for @delieverfavoritefood.
  ///
  /// In en, this message translates to:
  /// **'Deliver your favorite food'**
  String get delieverfavoritefood;

  /// No description provided for @foodninja.
  ///
  /// In en, this message translates to:
  /// **'Food Ninja'**
  String get foodninja;

  /// No description provided for @signupforfree.
  ///
  /// In en, this message translates to:
  /// **'Sign up for free'**
  String get signupforfree;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get email;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @createaccount.
  ///
  /// In en, this message translates to:
  /// **'Create Account'**
  String get createaccount;

  /// No description provided for @alreadyhaveanaccountlogin.
  ///
  /// In en, this message translates to:
  /// **'Already have an account? Login'**
  String get alreadyhaveanaccountlogin;

  /// No description provided for @fillinyourbiotogetstarted.
  ///
  /// In en, this message translates to:
  /// **'Fill in your bio to get started'**
  String get fillinyourbiotogetstarted;

  /// No description provided for @thisdatawillbedisplayedyouraccountprofileforsecurity.
  ///
  /// In en, this message translates to:
  /// **'This data will be displayed in your account profile for security'**
  String get thisdatawillbedisplayedyouraccountprofileforsecurity;

  /// No description provided for @username.
  ///
  /// In en, this message translates to:
  /// **'Username'**
  String get username;

  /// No description provided for @fullname.
  ///
  /// In en, this message translates to:
  /// **'Full Name'**
  String get fullname;

  /// No description provided for @next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// No description provided for @setyourlocation.
  ///
  /// In en, this message translates to:
  /// **'Set your location'**
  String get setyourlocation;

  /// No description provided for @yourlocation.
  ///
  /// In en, this message translates to:
  /// **'Your location'**
  String get yourlocation;

  /// No description provided for @setlocation.
  ///
  /// In en, this message translates to:
  /// **'Set location'**
  String get setlocation;

  /// No description provided for @comingsoon.
  ///
  /// In en, this message translates to:
  /// **'Coming soon'**
  String get comingsoon;

  /// No description provided for @removedfromfavorites.
  ///
  /// In en, this message translates to:
  /// **'Removed from favorites'**
  String get removedfromfavorites;

  /// No description provided for @addedtofavorites.
  ///
  /// In en, this message translates to:
  /// **'Added to favorites'**
  String get addedtofavorites;

  /// No description provided for @productdetail.
  ///
  /// In en, this message translates to:
  /// **'Product detail'**
  String get productdetail;

  /// No description provided for @showmore.
  ///
  /// In en, this message translates to:
  /// **'Show more'**
  String get showmore;

  /// No description provided for @showless.
  ///
  /// In en, this message translates to:
  /// **'Show less'**
  String get showless;

  /// No description provided for @addtobasket.
  ///
  /// In en, this message translates to:
  /// **'Add to basket'**
  String get addtobasket;

  /// No description provided for @otpcode.
  ///
  /// In en, this message translates to:
  /// **'OTP Code'**
  String get otpcode;

  /// No description provided for @enter6digitverifycode.
  ///
  /// In en, this message translates to:
  /// **'Enter 6-digit verification code'**
  String get enter6digitverifycode;

  /// No description provided for @entertheotpcodesenttoyouremail.
  ///
  /// In en, this message translates to:
  /// **'Enter the OTP code sent to your email'**
  String get entertheotpcodesenttoyouremail;

  /// No description provided for @codemustbe6digits.
  ///
  /// In en, this message translates to:
  /// **'Code must be 6 digits'**
  String get codemustbe6digits;

  /// No description provided for @resendotp.
  ///
  /// In en, this message translates to:
  /// **'Resend OTP'**
  String get resendotp;

  /// No description provided for @resendotpin.
  ///
  /// In en, this message translates to:
  /// **'Resend OTP in'**
  String get resendotpin;

  /// No description provided for @verify.
  ///
  /// In en, this message translates to:
  /// **'Verify'**
  String get verify;

  /// No description provided for @notification.
  ///
  /// In en, this message translates to:
  /// **'Notification'**
  String get notification;

  /// No description provided for @nonotification.
  ///
  /// In en, this message translates to:
  /// **'No notifications'**
  String get nonotification;

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @chat.
  ///
  /// In en, this message translates to:
  /// **'Chat'**
  String get chat;

  /// No description provided for @cart.
  ///
  /// In en, this message translates to:
  /// **'Cart'**
  String get cart;

  /// No description provided for @favourite.
  ///
  /// In en, this message translates to:
  /// **'Favourite'**
  String get favourite;

  /// No description provided for @profile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile;

  /// No description provided for @trackorder.
  ///
  /// In en, this message translates to:
  /// **'Track order'**
  String get trackorder;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @personaldetails.
  ///
  /// In en, this message translates to:
  /// **'Personal details'**
  String get personaldetails;

  /// No description provided for @orders.
  ///
  /// In en, this message translates to:
  /// **'Orders'**
  String get orders;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @paymentmethods.
  ///
  /// In en, this message translates to:
  /// **'Payment Methods'**
  String get paymentmethods;

  /// No description provided for @notifications.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get notifications;

  /// No description provided for @help.
  ///
  /// In en, this message translates to:
  /// **'Help'**
  String get help;

  /// No description provided for @about.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get about;

  /// No description provided for @deleteanaccount.
  ///
  /// In en, this message translates to:
  /// **'Delete an account'**
  String get deleteanaccount;

  /// No description provided for @logout.
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get logout;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// No description provided for @beverages.
  ///
  /// In en, this message translates to:
  /// **'Beverages'**
  String get beverages;

  /// No description provided for @groceries.
  ///
  /// In en, this message translates to:
  /// **'Groceries'**
  String get groceries;

  /// No description provided for @seeall.
  ///
  /// In en, this message translates to:
  /// **'See All'**
  String get seeall;

  /// No description provided for @addalltocart.
  ///
  /// In en, this message translates to:
  /// **'Add All to Cart'**
  String get addalltocart;

  /// No description provided for @chatmessage.
  ///
  /// In en, this message translates to:
  /// **'Chat Message'**
  String get chatmessage;

  /// No description provided for @callrangingpage.
  ///
  /// In en, this message translates to:
  /// **'Calling'**
  String get callrangingpage;

  /// No description provided for @ringing.
  ///
  /// In en, this message translates to:
  /// **'Ringing...'**
  String get ringing;

  /// No description provided for @volumeup.
  ///
  /// In en, this message translates to:
  /// **'Volume Up'**
  String get volumeup;

  /// No description provided for @volumeoff.
  ///
  /// In en, this message translates to:
  /// **'Volume Off'**
  String get volumeoff;

  /// No description provided for @subtotal.
  ///
  /// In en, this message translates to:
  /// **'Subtotal'**
  String get subtotal;

  /// No description provided for @deliverycharge.
  ///
  /// In en, this message translates to:
  /// **'Delivery Charge'**
  String get deliverycharge;

  /// No description provided for @discount.
  ///
  /// In en, this message translates to:
  /// **'Discount'**
  String get discount;

  /// No description provided for @total.
  ///
  /// In en, this message translates to:
  /// **'Total Cost'**
  String get total;

  /// No description provided for @confirmorder.
  ///
  /// In en, this message translates to:
  /// **'Confirm Order'**
  String get confirmorder;

  /// No description provided for @paymentmethod.
  ///
  /// In en, this message translates to:
  /// **'Payment Method'**
  String get paymentmethod;

  /// No description provided for @orderlocation.
  ///
  /// In en, this message translates to:
  /// **'Order Location'**
  String get orderlocation;

  /// No description provided for @edit.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get edit;

  /// No description provided for @mycart.
  ///
  /// In en, this message translates to:
  /// **'My Cart'**
  String get mycart;

  /// No description provided for @gotocheckout.
  ///
  /// In en, this message translates to:
  /// **'Go to Checkout'**
  String get gotocheckout;

  /// No description provided for @logintoyouraccount.
  ///
  /// In en, this message translates to:
  /// **'Login to your account'**
  String get logintoyouraccount;

  /// No description provided for @orcontinuewith.
  ///
  /// In en, this message translates to:
  /// **'Or continue with'**
  String get orcontinuewith;

  /// No description provided for @facebook.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook;

  /// No description provided for @google.
  ///
  /// In en, this message translates to:
  /// **'Google'**
  String get google;

  /// No description provided for @login.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get login;

  /// No description provided for @donthaveanaccountsignup.
  ///
  /// In en, this message translates to:
  /// **'Don\'t have an account? Sign up'**
  String get donthaveanaccountsignup;

  /// No description provided for @pepsican.
  ///
  /// In en, this message translates to:
  /// **'Pepsi Can'**
  String get pepsican;

  /// No description provided for @pepsicansubtitle.
  ///
  /// In en, this message translates to:
  /// **'330ml, Price'**
  String get pepsicansubtitle;

  /// No description provided for @pepsicandescription.
  ///
  /// In en, this message translates to:
  /// **'Pepsi is a refreshing carbonated drink with bold cola flavor and just the right amount of sweetness. Perfect for cooling down on a hot day or with your favorite meal.'**
  String get pepsicandescription;

  /// No description provided for @cocacolacan.
  ///
  /// In en, this message translates to:
  /// **'Coca Cola Can'**
  String get cocacolacan;

  /// No description provided for @cocacolacansubtitle.
  ///
  /// In en, this message translates to:
  /// **'325ml, Price'**
  String get cocacolacansubtitle;

  /// No description provided for @cocacolacandescription.
  ///
  /// In en, this message translates to:
  /// **'Coca Cola delivers the classic cola taste with perfect balance of sweetness and carbonation. A favorite drink that refreshes and uplifts any occasion.'**
  String get cocacolacandescription;

  /// No description provided for @dietcoke.
  ///
  /// In en, this message translates to:
  /// **'Diet Coke'**
  String get dietcoke;

  /// No description provided for @dietcokesubtitle.
  ///
  /// In en, this message translates to:
  /// **'355ml, Price'**
  String get dietcokesubtitle;

  /// No description provided for @dietcokedescription.
  ///
  /// In en, this message translates to:
  /// **'Diet Coke offers the same great Coca-Cola taste with zero sugar and fewer calories. Light and refreshing anytime.'**
  String get dietcokedescription;

  /// No description provided for @spritecan.
  ///
  /// In en, this message translates to:
  /// **'Sprite Can'**
  String get spritecan;

  /// No description provided for @spritecansubtitle.
  ///
  /// In en, this message translates to:
  /// **'355ml, Price'**
  String get spritecansubtitle;

  /// No description provided for @spritecandescription.
  ///
  /// In en, this message translates to:
  /// **'Sprite is a lemon-lime soda that delivers a clean, crisp and refreshing experience. Perfect to quench your thirst with a citrus burst.'**
  String get spritecandescription;

  /// No description provided for @applegrapejuice.
  ///
  /// In en, this message translates to:
  /// **'Apple & Grape Juice'**
  String get applegrapejuice;

  /// No description provided for @applegrapejuicesubtitle.
  ///
  /// In en, this message translates to:
  /// **'2L, Price'**
  String get applegrapejuicesubtitle;

  /// No description provided for @applegrapejuicedescription.
  ///
  /// In en, this message translates to:
  /// **'Delicious blend of sweet apples and juicy grapes. 2L bottle full of vitamins, ideal for sharing with family or friends.'**
  String get applegrapejuicedescription;

  /// No description provided for @orangejuice.
  ///
  /// In en, this message translates to:
  /// **'Orange Juice'**
  String get orangejuice;

  /// No description provided for @orangejuicesubtitle.
  ///
  /// In en, this message translates to:
  /// **'2L, Price'**
  String get orangejuicesubtitle;

  /// No description provided for @orangejuicedescription.
  ///
  /// In en, this message translates to:
  /// **'Freshly squeezed orange juice packed with vitamin C and natural sweetness. Enjoy chilled for a refreshing healthy drink anytime.'**
  String get orangejuicedescription;

  /// No description provided for @specialdealforoctober.
  ///
  /// In en, this message translates to:
  /// **'Special Deal for \nOctober'**
  String get specialdealforoctober;

  /// No description provided for @buynow.
  ///
  /// In en, this message translates to:
  /// **'Buy Now'**
  String get buynow;

  /// No description provided for @ordernow.
  ///
  /// In en, this message translates to:
  /// **'Order Now'**
  String get ordernow;

  /// No description provided for @processing.
  ///
  /// In en, this message translates to:
  /// **'Processing'**
  String get processing;

  /// No description provided for @orderprice.
  ///
  /// In en, this message translates to:
  /// **'Price'**
  String get orderprice;

  /// No description provided for @orderitems.
  ///
  /// In en, this message translates to:
  /// **'Number of items'**
  String get orderitems;

  /// No description provided for @ordercode.
  ///
  /// In en, this message translates to:
  /// **'Order Code'**
  String get ordercode;

  /// No description provided for @findyourcomfortfoodhere.
  ///
  /// In en, this message translates to:
  /// **'Find your comfort food here'**
  String get findyourcomfortfoodhere;

  /// No description provided for @hereyoucanfindacheforforalltasteandcolorenjoy.
  ///
  /// In en, this message translates to:
  /// **'Here you can find a chef or dish for every taste and color. Enjoy!'**
  String get hereyoucanfindacheforforalltasteandcolorenjoy;

  /// No description provided for @foodninjaiswhereyourcomfortfoodlives.
  ///
  /// In en, this message translates to:
  /// **'Food Ninja is where your comfort food lives'**
  String get foodninjaiswhereyourcomfortfoodlives;

  /// No description provided for @enjoyafastandsmoothfooddeliveryatyourdoorstep.
  ///
  /// In en, this message translates to:
  /// **'Enjoy a fast and smooth food delivery at your doorstep'**
  String get enjoyafastandsmoothfooddeliveryatyourdoorstep;

  /// No description provided for @beefbone.
  ///
  /// In en, this message translates to:
  /// **'Beef Bone'**
  String get beefbone;

  /// No description provided for @beefbonesubtitle.
  ///
  /// In en, this message translates to:
  /// **'1kg, Price'**
  String get beefbonesubtitle;

  /// No description provided for @beefbonedescription.
  ///
  /// In en, this message translates to:
  /// **'Fresh beef bones rich in flavor, perfect for soups and broths. High in nutrients, ideal for slow-cooked recipes.'**
  String get beefbonedescription;

  /// No description provided for @broilerchicken.
  ///
  /// In en, this message translates to:
  /// **'Broiler Chicken'**
  String get broilerchicken;

  /// No description provided for @broilerchickensubtitle.
  ///
  /// In en, this message translates to:
  /// **'1kg, Price'**
  String get broilerchickensubtitle;

  /// No description provided for @broilerchickendescription.
  ///
  /// In en, this message translates to:
  /// **'Tender and juicy broiler chicken, great for roasting, grilling or frying. Sourced from premium quality farms for delicious meals.'**
  String get broilerchickendescription;

  /// No description provided for @rice.
  ///
  /// In en, this message translates to:
  /// **'Rice'**
  String get rice;

  /// No description provided for @ricesubtitle.
  ///
  /// In en, this message translates to:
  /// **'1kg, Price'**
  String get ricesubtitle;

  /// No description provided for @ricedescription.
  ///
  /// In en, this message translates to:
  /// **'Finest quality long-grain rice, fluffy and aromatic. Perfect for daily meals, biryani, or fried rice.'**
  String get ricedescription;

  /// No description provided for @pulses.
  ///
  /// In en, this message translates to:
  /// **'Pulses'**
  String get pulses;

  /// No description provided for @pulsessubtitle.
  ///
  /// In en, this message translates to:
  /// **'1kg, Price'**
  String get pulsessubtitle;

  /// No description provided for @pulsesdescription.
  ///
  /// In en, this message translates to:
  /// **'High-protein pulses packed with nutrients. Ideal for soups, salads, and traditional dishes. 100% natural and organic.'**
  String get pulsesdescription;

  /// No description provided for @eggchickenred.
  ///
  /// In en, this message translates to:
  /// **'Egg Chicken Red'**
  String get eggchickenred;

  /// No description provided for @eggchickenredsubtitle.
  ///
  /// In en, this message translates to:
  /// **'4pcs, Price'**
  String get eggchickenredsubtitle;

  /// No description provided for @eggchickenreddescription.
  ///
  /// In en, this message translates to:
  /// **'Farm-fresh red chicken eggs, rich in taste and nutrition. Perfect for breakfast, baking, or cooking.'**
  String get eggchickenreddescription;

  /// No description provided for @eggchickenwhite.
  ///
  /// In en, this message translates to:
  /// **'Egg Chicken White'**
  String get eggchickenwhite;

  /// No description provided for @eggchickenwhitesubtitle.
  ///
  /// In en, this message translates to:
  /// **'180g, Price'**
  String get eggchickenwhitesubtitle;

  /// No description provided for @eggchickenwhitedescription.
  ///
  /// In en, this message translates to:
  /// **'Fresh white chicken eggs with mild taste, ideal for daily meals and recipes. High in protein and essential nutrients.'**
  String get eggchickenwhitedescription;

  /// No description provided for @eggpasta.
  ///
  /// In en, this message translates to:
  /// **'Egg Pasta'**
  String get eggpasta;

  /// No description provided for @eggpastasubtitle.
  ///
  /// In en, this message translates to:
  /// **'30g, Price'**
  String get eggpastasubtitle;

  /// No description provided for @eggpastadescription.
  ///
  /// In en, this message translates to:
  /// **'Classic egg pasta made with real eggs for rich smooth texture. Cooks quickly and pairs perfectly with any sauce.'**
  String get eggpastadescription;

  /// No description provided for @eggnoodles.
  ///
  /// In en, this message translates to:
  /// **'Egg Noodles'**
  String get eggnoodles;

  /// No description provided for @eggnoodlessubtitle.
  ///
  /// In en, this message translates to:
  /// **'2L, Price'**
  String get eggnoodlessubtitle;

  /// No description provided for @eggnoodlesdescription.
  ///
  /// In en, this message translates to:
  /// **'Delicious soft egg noodles made with high-quality ingredients. Perfect for stir-fries, soups, or Asian dishes.'**
  String get eggnoodlesdescription;

  /// No description provided for @mayonnaiseggless.
  ///
  /// In en, this message translates to:
  /// **'Eggless Mayonnaise'**
  String get mayonnaiseggless;

  /// No description provided for @mayonnaisegglesssubtitle.
  ///
  /// In en, this message translates to:
  /// **'325ml, Price'**
  String get mayonnaisegglesssubtitle;

  /// No description provided for @mayonnaisegglessdescription.
  ///
  /// In en, this message translates to:
  /// **'Smooth creamy eggless mayonnaise, perfect for sandwiches, salads, and dips. Suitable for vegetarians.'**
  String get mayonnaisegglessdescription;

  /// No description provided for @roundcuteggnoodles.
  ///
  /// In en, this message translates to:
  /// **'Round-Cut Egg Noodles'**
  String get roundcuteggnoodles;

  /// No description provided for @roundcuteggnoodlessubtitle.
  ///
  /// In en, this message translates to:
  /// **'330ml, Price'**
  String get roundcuteggnoodlessubtitle;

  /// No description provided for @roundcuteggnoodlesdescription.
  ///
  /// In en, this message translates to:
  /// **'Round-cut egg noodles for those who love rich flavor and firm texture. Great for soups or quick meals.'**
  String get roundcuteggnoodlesdescription;

  /// No description provided for @ginger.
  ///
  /// In en, this message translates to:
  /// **'Ginger'**
  String get ginger;

  /// No description provided for @gingersubtitle.
  ///
  /// In en, this message translates to:
  /// **'250g, Price'**
  String get gingersubtitle;

  /// No description provided for @gingerdescription.
  ///
  /// In en, this message translates to:
  /// **'Fresh aromatic ginger root for cooking and natural remedies. Adds spice, flavor, and health benefits.'**
  String get gingerdescription;

  /// No description provided for @bellpeppered.
  ///
  /// In en, this message translates to:
  /// **'Bell Pepper Red'**
  String get bellpeppered;

  /// No description provided for @bellpepperredsubtitle.
  ///
  /// In en, this message translates to:
  /// **'1kg, Price'**
  String get bellpepperredsubtitle;

  /// No description provided for @bellpeppereddescription.
  ///
  /// In en, this message translates to:
  /// **'Bright red bell peppers full of vitamins and antioxidants. Sweet, crunchy, perfect for salads, grilling, or stir-fries.'**
  String get bellpeppereddescription;

  /// No description provided for @redapple.
  ///
  /// In en, this message translates to:
  /// **'Red Apple'**
  String get redapple;

  /// No description provided for @redapplesubtitle.
  ///
  /// In en, this message translates to:
  /// **'1kg, Price'**
  String get redapplesubtitle;

  /// No description provided for @redappledescription.
  ///
  /// In en, this message translates to:
  /// **'Crisp juicy red apples full of natural sweetness. Great for snacking, baking, or juicing.'**
  String get redappledescription;

  /// No description provided for @organicbananas.
  ///
  /// In en, this message translates to:
  /// **'Organic Bananas'**
  String get organicbananas;

  /// No description provided for @organicbananassubtitle.
  ///
  /// In en, this message translates to:
  /// **'12kg, Price'**
  String get organicbananassubtitle;

  /// No description provided for @organicbananasdescription.
  ///
  /// In en, this message translates to:
  /// **'Naturally sweet organic bananas, rich in potassium and fiber. Ideal for smoothies, snacks, and desserts.'**
  String get organicbananasdescription;

  /// No description provided for @findyourfavoritefood.
  ///
  /// In en, this message translates to:
  /// **'Find Your Favorite \nFood'**
  String get findyourfavoritefood;

  /// No description provided for @whatdoyouwanttoorder.
  ///
  /// In en, this message translates to:
  /// **'What do you want to order?'**
  String get whatdoyouwanttoorder;

  /// No description provided for @online.
  ///
  /// In en, this message translates to:
  /// **'Online'**
  String get online;

  /// No description provided for @deliverto.
  ///
  /// In en, this message translates to:
  /// **'Deliver To'**
  String get deliverto;

  /// No description provided for @items.
  ///
  /// In en, this message translates to:
  /// **'Items'**
  String get items;

  /// No description provided for @message.
  ///
  /// In en, this message translates to:
  /// **'Message'**
  String get message;

  /// No description provided for @nomessageyet.
  ///
  /// In en, this message translates to:
  /// **'No message yet'**
  String get nomessageyet;

  /// No description provided for @arabic.
  ///
  /// In en, this message translates to:
  /// **'Arabic'**
  String get arabic;

  /// No description provided for @english.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get english;

  /// No description provided for @resendOtpPrefix.
  ///
  /// In en, this message translates to:
  /// **'Resend OTP in 00:'**
  String get resendOtpPrefix;

  /// No description provided for @onboardingtitleone.
  ///
  /// In en, this message translates to:
  /// **'Find your Comfort\nFood here'**
  String get onboardingtitleone;

  /// No description provided for @onboardingsubtitleone.
  ///
  /// In en, this message translates to:
  /// **'Here You Can find a chef or dish for every\ntaste and color. Enjoy!'**
  String get onboardingsubtitleone;

  /// No description provided for @onboardingtitletwo.
  ///
  /// In en, this message translates to:
  /// **'Food Ninja is Where Your\nComfort Food Lives'**
  String get onboardingtitletwo;

  /// No description provided for @onboardingsubtitletwo.
  ///
  /// In en, this message translates to:
  /// **'Enjoy a fast and smooth food delivery at\nyour doorstep'**
  String get onboardingsubtitletwo;

  /// No description provided for @otpsentsuccessfully.
  ///
  /// In en, this message translates to:
  /// **'OTP sent successfully, please verify to continue'**
  String get otpsentsuccessfully;

  /// No description provided for @userregisteredsuccessfully.
  ///
  /// In en, this message translates to:
  /// **'User registered successfully'**
  String get userregisteredsuccessfully;

  /// No description provided for @deleteaccount.
  ///
  /// In en, this message translates to:
  /// **'Delete Account'**
  String get deleteaccount;

  /// No description provided for @areyousureyouwanttodeleteyouraccount.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete your account?'**
  String get areyousureyouwanttodeleteyouraccount;

  /// No description provided for @delete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get delete;

  /// No description provided for @close.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get close;

  /// No description provided for @accountdeletedsuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Account deleted successfully'**
  String get accountdeletedsuccessfully;

  /// No description provided for @areyousureyouwanttologout.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to logout?'**
  String get areyousureyouwanttologout;

  /// No description provided for @namemustbeatleastcharacters.
  ///
  /// In en, this message translates to:
  /// **'Name must be at least 4 characters'**
  String get namemustbeatleastcharacters;

  /// No description provided for @pleasechooseanavatarimage.
  ///
  /// In en, this message translates to:
  /// **'Please choose an avatar image'**
  String get pleasechooseanavatarimage;

  /// No description provided for @pleaseenteraname.
  ///
  /// In en, this message translates to:
  /// **'Please enter a name'**
  String get pleaseenteraname;

  /// No description provided for @pleaseenteravalidemail.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid email'**
  String get pleaseenteravalidemail;

  /// No description provided for @emailmustcontainat.
  ///
  /// In en, this message translates to:
  /// **'Email must contain @gmail.com'**
  String get emailmustcontainat;

  /// No description provided for @invalidorexpiredotp.
  ///
  /// In en, this message translates to:
  /// **'Invalid or expired OTP'**
  String get invalidorexpiredotp;

  /// No description provided for @authenticationsuccessful.
  ///
  /// In en, this message translates to:
  /// **'Authentication successful'**
  String get authenticationsuccessful;

  /// No description provided for @theme.
  ///
  /// In en, this message translates to:
  /// **'Theme'**
  String get theme;

  /// No description provided for @lightTheme.
  ///
  /// In en, this message translates to:
  /// **'Light Theme'**
  String get lightTheme;

  /// No description provided for @darkTheme.
  ///
  /// In en, this message translates to:
  /// **'Dark Theme'**
  String get darkTheme;

  /// No description provided for @otpresentsuccessfully.
  ///
  /// In en, this message translates to:
  /// **'OTP resent successfully'**
  String get otpresentsuccessfully;

  /// No description provided for @oopsorderfailed.
  ///
  /// In en, this message translates to:
  /// **'Oops! Order Failed'**
  String get oopsorderfailed;

  /// No description provided for @somethingwentterriblywrong.
  ///
  /// In en, this message translates to:
  /// **'Something went terribly wrong.'**
  String get somethingwentterriblywrong;

  /// No description provided for @pleasetryagain.
  ///
  /// In en, this message translates to:
  /// **'Please try again'**
  String get pleasetryagain;

  /// No description provided for @backtohome.
  ///
  /// In en, this message translates to:
  /// **'Back to home'**
  String get backtohome;

  /// No description provided for @yourorderaccepted.
  ///
  /// In en, this message translates to:
  /// **'Your Order has been accepted'**
  String get yourorderaccepted;

  /// No description provided for @youritemsplaced.
  ///
  /// In en, this message translates to:
  /// **'Your items have been placed and are on their way to being processed.'**
  String get youritemsplaced;

  /// No description provided for @selectmethod.
  ///
  /// In en, this message translates to:
  /// **'Select Method'**
  String get selectmethod;

  /// No description provided for @checkout.
  ///
  /// In en, this message translates to:
  /// **'Checkout'**
  String get checkout;

  /// No description provided for @confirmation.
  ///
  /// In en, this message translates to:
  /// **'Confirmation'**
  String get confirmation;

  /// No description provided for @placeorder.
  ///
  /// In en, this message translates to:
  /// **'Place Order'**
  String get placeorder;

  /// No description provided for @byplacinganorderyouagreetoour.
  ///
  /// In en, this message translates to:
  /// **'By placing an order you agree to our'**
  String get byplacinganorderyouagreetoour;

  /// No description provided for @conditions.
  ///
  /// In en, this message translates to:
  /// **'Conditions'**
  String get conditions;

  /// No description provided for @and.
  ///
  /// In en, this message translates to:
  /// **' And '**
  String get and;

  /// No description provided for @terms.
  ///
  /// In en, this message translates to:
  /// **'Terms'**
  String get terms;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['ar', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar': return AppLocalizationsAr();
    case 'en': return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
