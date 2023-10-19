

import 'package:figmaaapdemo/src/presentation/screens/businees_screen.dart';

import 'package:figmaaapdemo/src/presentation/screens/business_details.dart';
import 'package:figmaaapdemo/src/presentation/screens/business_search.dart';
import 'package:figmaaapdemo/src/presentation/screens/filter_screen.dart';
import 'package:figmaaapdemo/src/presentation/screens/home_screen.dart';
import 'package:figmaaapdemo/src/presentation/screens/search_screen.dart';
import 'package:figmaaapdemo/src/presentation/screens/splash_screen.dart';

import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());


}
//
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      initialRoute: '/splash',
      routes: {
        '/splash': (context) => SplashScreen(),
        '/home': (context) => HomeScreen(),
        '/business': (context) => BusinessScreen(),
        '/details':(context) =>BusinessDetailsPage(),
        '/search':(context) =>SearchScreen(),
        '/businesssearch':(context) => BusinessSearch(),
        '/filter':(context) => FilterScreen(),
      },
      //routes: {
      //  '/splash': (context) =>BusinessScreen(),
        // Add more routes for the rest of your app.
      //
    );
  }
}
