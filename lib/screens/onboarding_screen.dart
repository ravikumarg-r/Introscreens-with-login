import 'package:flutter/material.dart';
import 'package:flutter_onboarding/flutter_onboarding.dart';
import 'package:flutter_onboarding/onboarding_model.dart';
import 'package:intro_pro/screens/home_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final pages = [
    IntroModel(
      title: 'On boarding page 1',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
      titleColor: Colors.white,
      descriptionColor: Colors.white,
      imagePath: 'assets/images/slide_1.png',
    ),
    IntroModel(
      title: 'On boarding page 2',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
      titleColor: Colors.white,
      descriptionColor: Colors.white,
      imagePath: 'assets/images/slide_3.png',
    ),
    IntroModel(
      title: 'On boarding page 3',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
      titleColor: Colors.white,
      descriptionColor: Colors.white,
      imagePath: 'assets/images/slide_3.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlutterOnBoarding(
        backgroundColor: Colors.green,
        pages: pages,
        onGetStartedRoute: MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        ),
      ),
    );
  }
}
