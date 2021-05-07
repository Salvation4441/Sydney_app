import 'package:flutter/material.dart';
import 'package:src_app/screens/dashboard/dashboardScreen.dart';

class SplashScreen extends StatefulWidget {
  static String routeName = '/splash';
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Image.asset('assets/icons/logo.png'),
          ),
          Align(
            alignment: Alignment.bottomCenter,
              child: Text('Copyright @ 2021')
          )
        ],
      ),
    );
  }
  @override
  void initState() {
    super.initState();
    Future.delayed(
        Duration(seconds: 5),
            () => Navigator.pushNamed(context, DashboardScreen.routeName)
    );
  }
}
