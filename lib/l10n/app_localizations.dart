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
  /// **'User name'**
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
  /// **'ar'**
  String get arabic;

  /// No description provided for @english.
  ///
  /// In en, this message translates to:
  /// **'en'**
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

  /// No description provided for @usernameisrequired.
  ///
  /// In en, this message translates to:
  /// **'Username is required'**
  String get usernameisrequired;

  /// No description provided for @usernamemustbeatleast3chars.
  ///
  /// In en, this message translates to:
  /// **'Username must be at least 3 characters'**
  String get usernamemustbeatleast3chars;

  /// No description provided for @fullnameisrequired.
  ///
  /// In en, this message translates to:
  /// **'Fullname is required'**
  String get fullnameisrequired;

  /// No description provided for @fullnamemustbeatleast3chars.
  ///
  /// In en, this message translates to:
  /// **'Fullname must be at least 3 characters'**
  String get fullnamemustbeatleast3chars;

  /// No description provided for @pleaseselectaprofileimage.
  ///
  /// In en, this message translates to:
  /// **'Please select a profile image from the camera or gallery'**
  String get pleaseselectaprofileimage;

  /// No description provided for @profilecompletedsuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Profile completed successfully'**
  String get profilecompletedsuccessfully;

  /// No description provided for @welcomebackloginsuccess.
  ///
  /// In en, this message translates to:
  /// **'Welcome back! You have logged in successfully.'**
  String get welcomebackloginsuccess;

  /// No description provided for @accounthasbeendeletedsuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Account has been deleted successfully'**
  String get accounthasbeendeletedsuccessfully;

  /// No description provided for @confirmdelete.
  ///
  /// In en, this message translates to:
  /// **'Confirm Delete'**
  String get confirmdelete;

  /// No description provided for @confirmdeletemessage.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete your account?'**
  String get confirmdeletemessage;

  /// No description provided for @confirmlogout.
  ///
  /// In en, this message translates to:
  /// **'Confirm Logout'**
  String get confirmlogout;

  /// No description provided for @areyousurelogout.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to log out?'**
  String get areyousurelogout;

  /// No description provided for @confirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get confirm;

  /// No description provided for @loggedoutsuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Logged out successfully'**
  String get loggedoutsuccessfully;

  /// No description provided for @profileupdatedsuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Profile updated successfully'**
  String get profileupdatedsuccessfully;

  /// No description provided for @pepsidescription.
  ///
  /// In en, this message translates to:
  /// **'Pepsi is a refreshing carbonated drink with a bold cola flavor that instantly revitalizes you on hot days. It has the perfect amount of sweetness to complement your favorite meals. Loved by all ages, it brings joy with every sip. Can be enjoyed anytime as a quick and refreshing thirst-quencher. Its practical packaging makes it easy to take anywhere.'**
  String get pepsidescription;

  /// No description provided for @cocacoladescription.
  ///
  /// In en, this message translates to:
  /// **'Coca-Cola delivers the classic cola taste with a perfect balance of sweetness and fizz. It refreshes and lifts your mood on any occasion, whether at home or outdoors. Can be enjoyed alone or with snacks to enhance their flavor. Loved by both children and adults. Provides a rich and delicious drinking experience every time.'**
  String get cocacoladescription;

  /// No description provided for @dietcokedescription.
  ///
  /// In en, this message translates to:
  /// **'Diet Coke offers the same great Coca-Cola taste without sugar and with fewer calories. A light and refreshing drink, perfect for those who want to reduce sugar intake without sacrificing flavor. Can be enjoyed anytime and is a healthier choice among sodas. Provides a sense of refreshment and energy. The practical packaging makes it convenient to carry.'**
  String get dietcokedescription;

  /// No description provided for @spritedescription.
  ///
  /// In en, this message translates to:
  /// **'Sprite is a refreshing fizzy drink with natural lemon and lime flavors. Provides a sense of purity and refreshment with every sip, perfect for hot days and light meals. Contains balanced carbonation for a joyful feeling. Suitable for all ages and adds a refreshing touch to any meal. Can be enjoyed alone or with food.'**
  String get spritedescription;

  /// No description provided for @applegrapejuicedescription.
  ///
  /// In en, this message translates to:
  /// **'A delicious blend of sweet apple and juicy grapes, rich in essential vitamins and minerals. The 2-liter bottle is perfect for sharing with family and friends. Offers a natural and tasty flavor with every sip, enhancing health and energy. Suitable for both kids and adults, making it an excellent choice for breakfast or a light snack. Free from artificial additives, preserving the natural fruit taste.'**
  String get applegrapejuicedescription;

  /// No description provided for @orangejuicedescription.
  ///
  /// In en, this message translates to:
  /// **'Fresh orange juice packed with natural vitamin C and a sweet, refreshing taste. Perfect for enjoying a healthy, revitalizing drink any time of the day. Boosts immunity and provides natural energy for both children and adults. Can be enjoyed alone or with meals to increase freshness and flavor. Carefully prepared to preserve natural taste and nutritional value.'**
  String get orangejuicedescription;

  /// No description provided for @beefbonedescription.
  ///
  /// In en, this message translates to:
  /// **'Fresh beef bones, rich in flavor, ideal for soups, broths, and slow-cooked recipes. High in protein and essential nutrients for the body. Adds deep, rich taste to any meal. Can be used for daily cooking or special occasions. High-quality product ensures natural flavor and excellent tenderness when cooked.'**
  String get beefbonedescription;

  /// No description provided for @broilerchickendescription.
  ///
  /// In en, this message translates to:
  /// **'Tender and juicy broiler chicken, perfect for grilling or frying. Sourced from high-quality farms to ensure healthy and delicious meat. Rich in protein and enhances the flavor of daily meals. Can be prepared in various ways to suit all tastes. Guarantees a delightful and tasty eating experience with every meal.'**
  String get broilerchickendescription;

  /// No description provided for @ricedsescription.
  ///
  /// In en, this message translates to:
  /// **'High-quality long-grain rice that cooks fluffy and aromatic. Perfect for daily meals, biryani, or fried rice. Provides a balanced taste and excellent texture for every recipe. Rich in carbohydrates and offers a satisfying meal. Can be paired with all types of dishes for a nutritious and delicious touch.'**
  String get ricedsescription;

  /// No description provided for @pulsesdescription.
  ///
  /// In en, this message translates to:
  /// **'Pulses rich in protein and essential nutrients. Suitable for soups, salads, and traditional dishes. 100% natural and organic for better health. Provides energy and refreshment, making it a balanced nutritional choice. Easily incorporated into a variety of meals to add high nutritional value.'**
  String get pulsesdescription;

  /// No description provided for @eggchickenreddescription.
  ///
  /// In en, this message translates to:
  /// **'Fresh red chicken eggs with a rich taste and high nutritional value. Ideal for breakfast, baking, or daily cooking. Packed with essential proteins and minerals for the body. Adds natural and delicious flavor to your meals. High-quality product ensures food safety and excellent taste every time.'**
  String get eggchickenreddescription;

  /// No description provided for @eggchickenwhitedescription.
  ///
  /// In en, this message translates to:
  /// **'Fresh white chicken eggs with a light, delicious flavor. Rich in protein and essential nutrients. Suitable for daily meals and various recipes. Provides a feeling of fullness and energy. Natural and safe product with high nutritional value suitable for the whole family.'**
  String get eggchickenwhitedescription;

  /// No description provided for @eggpastadescription.
  ///
  /// In en, this message translates to:
  /// **'Classic egg pasta made from real eggs for a rich and smooth texture. Cooks quickly and pairs well with all types of sauces. Gives your meal a delicious and distinctive taste. Can be served as a main or side dish. High-quality product ensures perfect taste and excellent texture.'**
  String get eggpastadescription;

  /// No description provided for @eggnoodlesdescription.
  ///
  /// In en, this message translates to:
  /// **'Soft and tasty egg noodles made from high-quality ingredients. Perfect for quick stir-frying, soups, and Asian dishes. Provides a rich taste and distinctive flavor to every meal. Can be enjoyed alone or with various sauces. Natural product guarantees excellent cooking quality and texture.'**
  String get eggnoodlesdescription;

  /// No description provided for @mayonnaisegglessdescription.
  ///
  /// In en, this message translates to:
  /// **'Eggless mayonnaise, smooth and creamy, perfect for sandwiches, salads, and sauces. Suitable for vegetarians and provides a rich, smooth flavor. Adds a delicious touch without affecting texture. Can be used with all types of food to enhance taste. Healthy and natural product ensuring the best quality.'**
  String get mayonnaisegglessdescription;

  /// No description provided for @roundcuteggnoodlesdescription.
  ///
  /// In en, this message translates to:
  /// **'Round-cut egg spaghetti for lovers of rich flavor and firm texture. Excellent for soups or quick meals. Provides a unique dining experience with every dish. Can be combined with sauces or broths to enhance taste. High-quality product ensures a delicious and nutritious meal.'**
  String get roundcuteggnoodlesdescription;

  /// No description provided for @gingerdescription.
  ///
  /// In en, this message translates to:
  /// **'Fresh and aromatic ginger, used in cooking and natural remedies. Adds a spicy flavor and multiple health benefits. Improves digestion and boosts energy. Suitable for cooking, juices, or hot drinks. Natural product ensures quality and distinctive flavor for every meal.'**
  String get gingerdescription;

  /// No description provided for @bellpeppereddescription.
  ///
  /// In en, this message translates to:
  /// **'Bright red bell peppers rich in vitamins and antioxidants. Sweet and crunchy, perfect for salads, grilling, and frying. Adds attractive color and rich flavor to dishes. Packed with essential nutrients for health. High-quality natural product ensures great taste and visual appeal.'**
  String get bellpeppereddescription;

  /// No description provided for @redappledescription.
  ///
  /// In en, this message translates to:
  /// **'Crisp and juicy red apples rich in natural sweetness. Perfect for snacks, baking, or juices. Provides energy and high nutritional benefits for children and adults. Contains natural antioxidants that promote health. Can be eaten directly or used in various recipes.'**
  String get redappledescription;

  /// No description provided for @organicbananasdescription.
  ///
  /// In en, this message translates to:
  /// **'Natural sweet organic bananas, rich in potassium and fiber. Ideal for smoothies, snacks, and desserts. Provides quick and healthy energy for the body. Safe and natural product suitable for all ages. Can be eaten directly or incorporated into various recipes to enhance taste and nutrition.'**
  String get organicbananasdescription;

  /// No description provided for @otpmustbe6digits.
  ///
  /// In en, this message translates to:
  /// **'otp must be 6 digits'**
  String get otpmustbe6digits;

  /// No description provided for @pleaseentertheotp.
  ///
  /// In en, this message translates to:
  /// **'please enter the otp'**
  String get pleaseentertheotp;

  /// No description provided for @filters.
  ///
  /// In en, this message translates to:
  /// **'Filters'**
  String get filters;

  /// No description provided for @categories.
  ///
  /// In en, this message translates to:
  /// **'Categories'**
  String get categories;

  /// No description provided for @eggs.
  ///
  /// In en, this message translates to:
  /// **'Eggs'**
  String get eggs;

  /// No description provided for @noodlesandpasta.
  ///
  /// In en, this message translates to:
  /// **'Noodles & Pasta'**
  String get noodlesandpasta;

  /// No description provided for @chipsandcrisps.
  ///
  /// In en, this message translates to:
  /// **'Chips & Crisps'**
  String get chipsandcrisps;

  /// No description provided for @fastfood.
  ///
  /// In en, this message translates to:
  /// **'Fast Food'**
  String get fastfood;

  /// No description provided for @brand.
  ///
  /// In en, this message translates to:
  /// **'Brand'**
  String get brand;

  /// No description provided for @individualcollection.
  ///
  /// In en, this message translates to:
  /// **'Individual Collection'**
  String get individualcollection;

  /// No description provided for @cocola.
  ///
  /// In en, this message translates to:
  /// **'Cocola'**
  String get cocola;

  /// No description provided for @ifad.
  ///
  /// In en, this message translates to:
  /// **'Ifad'**
  String get ifad;

  /// No description provided for @kazifarmas.
  ///
  /// In en, this message translates to:
  /// **'Kazi Farmas'**
  String get kazifarmas;

  /// No description provided for @applyfilter.
  ///
  /// In en, this message translates to:
  /// **'Apply Filter'**
  String get applyfilter;

  /// No description provided for @freshfruitsvegetablestitle.
  ///
  /// In en, this message translates to:
  /// **'Fresh Fruits and Vegetables'**
  String get freshfruitsvegetablestitle;

  /// No description provided for @freshfruitsvegetablesdescription.
  ///
  /// In en, this message translates to:
  /// **'Fresh fruits and vegetables are carefully selected to ensure top quality and freshness. They provide essential vitamins, minerals, and fiber for a healthy lifestyle. Perfect for salads, cooking, or snacking. Sourced locally whenever possible to support sustainable farming. Enjoy the natural taste and vibrant colors in every bite.'**
  String get freshfruitsvegetablesdescription;

  /// No description provided for @freshfruitsvegetablessubtitle.
  ///
  /// In en, this message translates to:
  /// **'1kg, Price'**
  String get freshfruitsvegetablessubtitle;

  /// No description provided for @addedtocart.
  ///
  /// In en, this message translates to:
  /// **'Added to cart'**
  String get addedtocart;
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
