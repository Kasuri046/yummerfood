import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yummer/providers/homepage_provider.dart';
import 'package:yummer/providers/newpass_provider.dart';
import 'package:yummer/providers/otp_provider.dart';
import 'package:yummer/providers/provider_favourite.dart';
import 'package:yummer/providers/provider_onboarding.dart';
import 'package:yummer/providers/provider_order.dart';
import 'package:yummer/providers/provider_phone.dart';
import 'package:yummer/providers/provider_promocode.dart';
import 'package:yummer/providers/search_provider.dart';
import 'package:yummer/providers/signin_provider.dart';
import 'package:yummer/providers/signup_provider.dart';
import 'navigationbar/navigation_menu.dart';
import 'navigationbar/provider_navigation.dart';
import 'onboarding/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        //Navigation Bar
        ChangeNotifierProvider(create: (_) => NavigationProvider()),
        // OnBorading
        ChangeNotifierProvider(create: (_) => OnboardingModelProvider()),
        //Sign In Page
        ChangeNotifierProvider(create: (_) => KeyboardVisibilityProvider()),
        //SignUp
        ChangeNotifierProvider(create: (_) => SignUpModel()),
        //New Passsord
        ChangeNotifierProvider(create: (_) => NewPasswordModel()),
        //Otp Provider
        ChangeNotifierProvider(create: (_) => OtpProvider()),
        //PhoneNumberProvider
        ChangeNotifierProvider(create: (_) => PhoneNumberProvider()),
        //OrderListProvider
        ChangeNotifierProvider(create: (_) => OrderListProvider(0)),
        //My-Favourite
        ChangeNotifierProvider(create: (_) => FavouriteProvider()),
        //My Promocodes
        ChangeNotifierProvider(create: (_) => PromoCodeProvider()),
        //HomePage Provider
        ChangeNotifierProvider(create: (_) => HomepageProvider()),
        //SearchPage Provider
        ChangeNotifierProvider(create: (_) => SearchpageProvider()),
      ],

      child: MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primaryColor: Color(0xFFEEF3FC),
              hintColor: Color(0xFFEEF3FC),
              appBarTheme: const AppBarTheme(
                  iconTheme: IconThemeData(color: Colors.black),
                  elevation: 0,
                  backgroundColor: Colors.white)),
          home: WelcomePage()),
    );
  }
}
