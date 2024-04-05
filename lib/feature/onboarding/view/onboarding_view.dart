import 'package:flutter/material.dart';
import 'package:moonx/product/core/model/onboarding.dart';

/// Onboarding View
final class OnboardingView extends StatelessWidget {
  /// Constructor
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    final onboardingList = Onboarding.onboardingList;
    return PageView.builder(
      itemCount: onboardingList.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Image.asset(
              onboardingList[index].imageUrl,
              width: 300,
              height: 300,
            ),
            Text(onboardingList[index].title ?? ''),
            Text(onboardingList[index].description),
          ],
        );
      },
    );
  }
}
