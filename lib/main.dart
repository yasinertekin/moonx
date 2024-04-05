import 'package:flutter/material.dart';
import 'package:moonx/feature/onboarding/view/onboarding_view.dart';

void main() {
  runApp(
    const _MoonX(),
  );
}

final class _MoonX extends StatelessWidget {
  const _MoonX();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const OnboardingView(),
    );
  }
}
