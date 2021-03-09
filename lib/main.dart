import 'package:flutter/material.dart';
import 'package:ocion/Screens/calculateVolume.dart';
import 'package:ocion/Screens/ellipticalShape.dart';
import 'package:ocion/Screens/rectanglePoolShape.dart';
import 'package:ocion/Screens/splash.dart';
import 'package:ocion/Screens/welcomeScreen.dart';


void main() {
  runApp(MyApp());
}

var routes = <String, WidgetBuilder>{
  // "/walkthrough": (BuildContext context) => WalkThrough(),
  // "/login": (BuildContext context) => SignInScreen(),
  // "/forgetPassword": (BuildContext context) => forgotPassword(),
  // "/signUp": (BuildContext context) => SignUpScreen(),
  //
  // "/home": (BuildContext context) => homePage(),
  // "/allCatorgry": (BuildContext context) => allCatorgies(),
  // "/naviga": (BuildContext context) => bottomNavigation(),
  // "/paymentScreen": (BuildContext context) => PaymentScreen(),
  "/WelcomeScreen": (BuildContext context) => welcomeScreen(),
  "/CalculateVolume": (BuildContext context) => calculateVolume(),
  "/EllipticalShape": (BuildContext context) => ellipticalShape(),
  "/RectanglePoolShape": (BuildContext context) => rectanglePoolShape(),

};



class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'workSans',
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: splashScreen(),
      routes: routes,
    );
  }
}

