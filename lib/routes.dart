import 'package:flutter/widgets.dart';
import 'screens/sign_up/sign_up_screen.dart';
import 'screens/sign_in/sign_in_screen.dart';
import 'screens/splash/splash_screen.dart';
import 'screens/otp/otp_screen.dart';
import 'screens/measurement/measurement.dart';
import 'screens/measurement/components/Manual.dart';
import 'screens/home/home_screen.dart';
import 'screens/home/components/product.dart';
import 'screens/home/components/MeasurementProfile.dart';
import 'screens/home/components/MeasurementPopup.dart';



// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  OtpScreen.routeName:(context) => OtpScreen(),
  measurement.routeName:(context) => measurement(),
  manual.routeName:(context) => manual(),
  HomeScreen.routeName:(context) => HomeScreen(),
  Product.routeName:(context) => Product(),
  Measurement.routeName:(context) => Measurement(),
  MeasurementPopup.routeName:(context) => MeasurementPopup(),

};
// TODO Implement this library.