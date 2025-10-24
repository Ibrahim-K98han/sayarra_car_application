import 'package:flutter/material.dart';
import 'package:sayarra_car_application/presentation/screen/on_boarding/on_boarding_screen.dart';
import 'package:sayarra_car_application/presentation/screen/splash_screen/splash_screen.dart';

class RouteNames {
  static const String splashScreen = '/splashScreen';
  static const String onBoardingScreen = '/onBoardingScreen';
  // static const String loginScreen = '/loginScreen';
  // static const String registrationScreen = '/registrationScreen';
  // static const String forgotPasswordScreen = '/forgotPasswordScreen';
  // static const String otpScreen = '/otpScreen';
  // static const String forgotPasswordOtpScreen = '/forgotPasswordOtpScreen';
  // static const String newPasswordScreen = '/newPasswordScreen';
  // static const String mainScreen = '/mainScreen';
  // static const String homeScreen = '/homeScreen';
  // static const String allBrandScreen = '/allBrandScreen';
  // static const String featureCarScreen = '/featureCarScreen';
  // static const String allCarScreen = '/allCarScreen';
  // static const String detailsCarScreen = '/detailsCarScreen';
  // static const String bookingFormScreen = '/bookingFormScreen';
  // static const String paymentScreen = '/paymentScreen';
  // static const String becomeVendorScreen = '/becomeVendorScreen';
  // static const String reviewScreen = '/reviewScreen';
  // static const String saveScreen = '/saveScreen';
  // static const String chatListScreen = '/chatListScreen';
  // static const String singleChatScreen = '/singleChatScreen';
  // static const String editProfileScreen = '/editProfileScreen';
  // static const String changePassword = '/changePassword';
  // static const String privacyPolicyScreen = '/privacyPolicyScreen';
  // static const String termsConditionScreen = '/termsConditionScreen';
  // static const String manageCarScreen = '/manageCarScreen';
  // static const String teamMemberScreen = '/teamMemberScreen';
  // static const String addMemberScreen = '/addMemberScreen';
  // static const String addCarScreen = '/addCarScreen';
  // static const String editCarScreen = '/editCarScreen';
  // static const String profileScreen = '/profileScreen';
  // static const String kycScreen = '/kycScreen';
  // static const String kycViewScreen = '/kycViewScreen';
  // static const String carDealer = '/carDealer';
  // static const String dealerProfileScreen = '/dealerProfileScreen';
  // static const String subscriptionScreen = '/subscriptionScreen';
  // static const String compareScreen = '/compareScreen';
  // static const String purchaseHistoryScreen = '/purchaseHistoryScreen';
  // static const String contactScreen = '/contactScreen';
  // static const String languageScreen = '/languageScreen';
  // static const String purposeSelectScreen = '/purposeSelectScreen';
  // static const String stripePaymentScreen = '/stripePaymentScreen';
  // static const String paypalPaymentScreen = '/paypalPaymentScreen';
  // static const String razorpayPaymentScreen = '/razorpayPaymentScreen';
  // static const String flutterWavePaymentScreen = '/flutterWavePaymentScreen';
  // static const String payStackPaymentScreen = '/payStackPaymentScreen';
  // static const String molliePaymentScreen = '/molliePaymentScreen';
  // static const String instamojoPaymentScreen = '/instamojoPaymentScreen';
  // static const String payuPaymentScreen = '/payuPaymentScreen';
  // static const String bankTransferPaymentScreen = '/bankTransferPaymentScreen';

  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.splashScreen:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const SplashScreen(),
        );

      case RouteNames.onBoardingScreen:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const OnBoardingScreen(),
        );

      // case RouteNames.loginScreen:
      //   return MaterialPageRoute(
      //       settings: settings, builder: (_) => const LoginScreen());

      //   case RouteNames.registrationScreen:
      //     return MaterialPageRoute(
      //         settings: settings, builder: (_) => const RegistrationScreen());

      //   case RouteNames.forgotPasswordScreen:
      //     return MaterialPageRoute(
      //         settings: settings, builder: (_) => const ForgotPasswordScreen());

      //   case RouteNames.otpScreen:
      //     return MaterialPageRoute(
      //         settings: settings, builder: (_) => const OtpScreen());

      //   case RouteNames.forgotPasswordOtpScreen:
      //     return MaterialPageRoute(
      //         settings: settings, builder: (_) => const ForgotPasswordOtpScreen());

      //   case RouteNames.newPasswordScreen:
      //     return MaterialPageRoute(
      //         settings: settings, builder: (_) => const NewPasswordScreen());

      //   case RouteNames.mainScreen:
      //     return MaterialPageRoute(
      //         settings: settings, builder: (_) => const MainScreen());

      //   case RouteNames.homeScreen:
      //     return MaterialPageRoute(
      //         settings: settings, builder: (_) => const HomeScreen());

      //   case RouteNames.saveScreen:
      //     return MaterialPageRoute(
      //         settings: settings, builder: (_) => const SaveScreen());

      //   case RouteNames.allBrandScreen:
      //     final brand = settings.arguments as List<Brands>;
      //     return MaterialPageRoute(
      //         settings: settings, builder: (_) =>  AllBrandScreen(brands: brand,));

      //   // case RouteNames.featureCarScreen:
      //   //   return MaterialPageRoute(
      //   //       settings: settings, builder: (_) => const FeatureCarScreen());

      //   case RouteNames.allCarScreen:
      //     return MaterialPageRoute(
      //         settings: settings, builder: (_) => const AllCarScreen());

      //   case RouteNames.detailsCarScreen:
      //     final id = settings.arguments as String;
      //     return MaterialPageRoute(
      //         settings: settings, builder: (_) =>  DetailsCarScreen(id: id,));

      //   case RouteNames.bookingFormScreen:
      //     return MaterialPageRoute(
      //         settings: settings, builder: (_) => const BookingForm());

      //   case RouteNames.becomeVendorScreen:
      //     return MaterialPageRoute(
      //         settings: settings, builder: (_) => const BecomeVendorScreen());

      //   // case RouteNames.reviewScreen:
      //   //   return MaterialPageRoute(
      //   //       settings: settings, builder: (_) => const ReviewScreen());

      //   case RouteNames.editProfileScreen:
      //     return MaterialPageRoute(
      //         settings: settings, builder: (_) => const EditProfileScreen());

      //   case RouteNames.changePassword:
      //     return MaterialPageRoute(
      //         settings: settings, builder: (_) => const ChangePassword());

      //   case RouteNames.privacyPolicyScreen:
      //     return MaterialPageRoute(
      //         settings: settings, builder: (_) => const PrivacyPolicyScreen());

      //   case RouteNames.termsConditionScreen:
      //     return MaterialPageRoute(
      //         settings: settings, builder: (_) => const TermsConditionScreen());

      //   case RouteNames.manageCarScreen:
      //     return MaterialPageRoute(
      //         settings: settings, builder: (_) => const ManageCarScreen());

      //   case RouteNames.addCarScreen:
      //     final id = settings.arguments as String;
      //     return MaterialPageRoute(
      //         settings: settings, builder: (_) =>  AddCarScreen(id: id,));

      //   case RouteNames.editCarScreen:
      //     final id = settings.arguments as String;
      //     return MaterialPageRoute(
      //         settings: settings, builder: (_) =>  EditCarScreen(id: id,));

      //   case RouteNames.purposeSelectScreen:
      //     return MaterialPageRoute(
      //         settings: settings, builder: (_) =>  const PurposeSelectScreen());

      //   case RouteNames.profileScreen:
      //     return MaterialPageRoute(
      //         settings: settings, builder: (_) => const ProfileScreen());

      //   case RouteNames.kycScreen:
      //     return MaterialPageRoute(
      //         settings: settings, builder: (_) => const KycVerificationScreen());

      //   case RouteNames.kycViewScreen:
      //     return MaterialPageRoute(
      //         settings: settings, builder: (_) => const KycViewScreen());

      //   case RouteNames.carDealer:
      //     return MaterialPageRoute(
      //         settings: settings, builder: (_) =>  const AllDealerScreen());

      //   case RouteNames.dealerProfileScreen:
      //     final name = settings.arguments as String;
      //     return MaterialPageRoute(
      //         settings: settings, builder: (_) =>  DealerProfileScreen(userName: name,));

      //   case RouteNames.subscriptionScreen:
      //     return MaterialPageRoute(
      //         settings: settings, builder: (_) => const SubscriptionScreen());

      //   case RouteNames.teamMemberScreen:
      //     return MaterialPageRoute(
      //         settings: settings, builder: (_) => const TeamMemberScreen());

      //   case RouteNames.addMemberScreen:
      //     final id = settings.arguments as String;
      //     return MaterialPageRoute(
      //         settings: settings, builder: (_) =>  AddTeamMemberScreen(id: id,));

      //   case RouteNames.compareScreen:
      //     return MaterialPageRoute(
      //         settings: settings, builder: (_) => const CompareScreen());

      //   case RouteNames.purchaseHistoryScreen:
      //     return MaterialPageRoute(
      //         settings: settings, builder: (_) => const PurchaseHistoryScreen());

      //   case RouteNames.contactScreen:
      //     return MaterialPageRoute(
      //         settings: settings, builder: (_) => const ContactusScreen());

      //   case RouteNames.languageScreen:
      //     return MaterialPageRoute(
      //         settings: settings, builder: (_) => const LanguageScreen());

      //   case RouteNames.paymentScreen:
      //     final id = settings.arguments as String;
      //     return MaterialPageRoute(
      //         settings: settings, builder: (_) =>  PaymentScreen(id: id,));

      //   case RouteNames.stripePaymentScreen:
      //     final id = settings.arguments as String;
      //     return MaterialPageRoute(
      //         settings: settings, builder: (_) =>  StripePaymentScreen(id: id,));

      //   case RouteNames.paypalPaymentScreen:
      //     final url = settings.arguments as String;
      //     return MaterialPageRoute(
      //         settings: settings, builder: (_) =>  PaypalScreen(url: url));

      //     case RouteNames.razorpayPaymentScreen:
      //     final url = settings.arguments as String;
      //     return MaterialPageRoute(
      //         settings: settings, builder: (_) =>  RazorpayScreen(url: url));

      //   case RouteNames.flutterWavePaymentScreen:
      //     final url = settings.arguments as String;
      //     return MaterialPageRoute(
      //         settings: settings, builder: (_) =>  FlutterWaveScreen(url: url));

      //   case RouteNames.payStackPaymentScreen:
      //     final url = settings.arguments as String;
      //     return MaterialPageRoute(
      //         settings: settings, builder: (_) =>  PaystackPaymentScreen(url: url));

      //   case RouteNames.molliePaymentScreen:
      //     final url = settings.arguments as String;
      //     return MaterialPageRoute(
      //         settings: settings, builder: (_) =>  MolliePaymentScreen(url: url));

      //   case RouteNames.instamojoPaymentScreen:
      //     final url = settings.arguments as String;
      //     return MaterialPageRoute(
      //         settings: settings, builder: (_) =>  InstamojoPaymentScreen(url: url));

      //   case RouteNames.payuPaymentScreen:
      //     final url = settings.arguments as String;
      //     return MaterialPageRoute(
      //         settings: settings, builder: (_) =>  PayuPaymentScreen(url: url));

      //   case RouteNames.bankTransferPaymentScreen:
      //     final id = settings.arguments as String;
      //     return MaterialPageRoute(
      //         settings: settings, builder: (_) =>  BankPaymentScreen(id: id));

      //   case RouteNames.chatListScreen:
      //     return MaterialPageRoute(
      //         settings: settings, builder: (_) => const ChatListScreen());

      //   case RouteNames.singleChatScreen:
      //     final args = settings.arguments as ChatArguments;
      //     return MaterialPageRoute(
      //         settings: settings, builder: (_) =>  ChatScreen(userId: args.userId.toString(),carId: args.carId.toString(),));

      default:
        return MaterialPageRoute(
          builder:
              (_) => Scaffold(
                body: Center(child: Text('No Route Found ${settings.name}')),
              ),
        );
    }
  }
}
