import 'package:flutter/material.dart';
import 'package:src_app/screens/dashboard/dashboardScreen.dart';
import 'package:src_app/screens/dashboard/law/lawScreen.dart';
import 'package:src_app/screens/splash/splashScreen.dart';

final Map<String,WidgetBuilder> route = {
 SplashScreen.routeName:(context) => SplashScreen(),
 DashboardScreen.routeName:(context) => DashboardScreen(),
 LawScreen.routeName:(context) => LawScreen()
};