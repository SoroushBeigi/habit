import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:go_router/go_router.dart';
import 'package:habit/src/common/resources/asset_manager.dart';
import 'package:habit/src/features/home/presentation/home_screen.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});
  static const path = '/onboarding';
  static const name = 'onboarding';

  @override
  Widget build(BuildContext context) {
    return OnBoardingSlider(
      finishButtonText: 'Lets go!',
      onFinish: () {
        context.go(HomeScreen.path);
      },
      finishButtonStyle:  FinishButtonStyle(
backgroundColor: Theme.of(context).colorScheme.primary
      ),
      skipTextButton: const Text(
        'Skip',
        style: TextStyle(
          fontSize: 16,
          // color: kDarkBlueColor,
          fontWeight: FontWeight.w600,
        ),
      ),
      controllerColor: Colors.blue,
      totalPage: 3,
      headerBackgroundColor: Colors.white,
      pageBackgroundColor: Colors.white,
      background: [
        Image.asset(
          ImageManager.firstOnboardingPng,
          alignment: Alignment.center,
          height: 350,
          width: MediaQuery.of(context).size.width,
        ),


        Image.asset(
          ImageManager.secondOnboardingPng,
          height: 350,
          width: MediaQuery.of(context).size.width,
        ),
        Image.asset(
          ImageManager.thirdOnboardingPng,
          height: 350,
          width: MediaQuery.of(context).size.width,
        ),
      ],
      speed: 1.8,
      pageBodies: const [
        Column(
                children: [
                  SizedBox(height: 400,),
                  Text(
                    'Quit your bad habits',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
        Column(
          children: [
            SizedBox(height: 400,),
            Text(
              'Replace them with better ones',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 24.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        Column(
          children: [
            SizedBox(height: 400,),
            Text(
              'Stay mindful!',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 24.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),


      ],
    ) ;
  }
}
