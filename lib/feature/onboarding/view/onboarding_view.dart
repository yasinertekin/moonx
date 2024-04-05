import 'package:flutter/material.dart';
import 'package:gen/gen.dart';
import 'package:moonx/product/core/model/onboarding.dart';

part 'mixin/onboarding_builder_mixin.dart';
part 'widget/birth_date_view.dart';
part 'widget/birth_place_view.dart';
part 'widget/welcome_view.dart';

/// Onboarding View
final class OnboardingView extends StatelessWidget {
  /// Constructor
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: _OnboardingBuilder(),
    );
  }
}

final class _OnboardingBuilder extends StatefulWidget {
  const _OnboardingBuilder();

  @override
  State<_OnboardingBuilder> createState() => _OnboardingBuilderState();
}

final class _OnboardingBuilderState extends State<_OnboardingBuilder>
    with _OnboardingBuilderMixin, SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: OnBoardingEnum.values.length,
            itemBuilder: onboardingItemBuilder,
          ),
        ),
        _CustomPageSelector(controller: _controller),
        ElevatedButton(
          onPressed: () {},
          child: const Text('Next'),
        ),
      ],
    );
  }
}

final class _CustomPageSelector extends StatelessWidget {
  const _CustomPageSelector({
    required TabController controller,
  }) : _controller = controller;

  final TabController _controller;

  @override
  Widget build(BuildContext context) {
    return TabPageSelector(
      controller: _controller,
      indicatorSize: 10,
      color: Colors.grey,
      selectedColor: Colors.white,
    );
  }
}
