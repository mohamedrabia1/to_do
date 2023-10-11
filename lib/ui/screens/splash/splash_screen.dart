import 'package:flutter/material.dart';
import 'package:to_do/ui/screens/home/home_screen.dart';
import 'package:to_do/ui/utilits/app_assets.dart';

class SplashScreen extends StatefulWidget {
static const routeName = "splash";

  @override
  State<SplashScreen> createState() => _SplashScreenState();

}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3),(){
      Navigator.pushReplacementNamed(context, HomeScreen.routeName);
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Image.asset(AppAssets.splash),
    );
  }
}
