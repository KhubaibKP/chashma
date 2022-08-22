import 'package:chashma_ghar/glasses_page.dart';
import 'package:flutter/material.dart';
import 'package:chashma_ghar/home_page.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
     home: MyApp()
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        children: [
          Image.asset('images/glass1.png',
          height: 100.0,
          ),
          Text('Chashma Ghar', style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),)
        ],
      ),
      backgroundColor: Colors.white,
      nextScreen: GlassesPage(),
      splashTransition: SplashTransition.slideTransition,
      splashIconSize: 200,
      duration: 4000,
      animationDuration: const Duration(seconds: 1),

    );
  }


}


