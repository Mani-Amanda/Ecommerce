import 'package:ecommerce/features/authentication/screens/widgets/onboarding_dot_navigation.dart';
import 'package:ecommerce/features/authentication/screens/widgets/onboarding_next_button.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:ecommerce/features/authentication/screens/widgets/onboarding_page.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ///Horizontal Scrollable page
          PageView(
            children: const [
              onBoardingWidget(
                image: TImages.onBoardingImage1,
                title: TText.onBoardingSubtitle1,
                subtitle: TText.onBoardingSubtitle1,
              ),
              onBoardingWidget(
                image: TImages.onBoardingImage2,
                title: TText.onBoardingSubtitle2,
                subtitle: TText.onBoardingSubtitle2,
              ),
              onBoardingWidget(
                image: TImages.onBoardingImage3,
                title: TText.onBoardingSubtitle3,
                subtitle: TText.onBoardingSubtitle3,
              ),
            ],
          ),

          ///Skip Button
          const onBoardingSkip(),

          ///Dot Navigation SmoothPageIndicator
          OnBoardingDotNavigation(),

          ///Circular Button
          onboardingnextbutton(),
        ],
      ),
    );
  }
}
