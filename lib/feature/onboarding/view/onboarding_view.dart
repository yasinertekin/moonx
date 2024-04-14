import 'package:auto_route/annotations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gen/gen.dart';
import 'package:intl/intl.dart';
import 'package:moonx/feature/onboarding/cubit/onboarding_cubit.dart';
import 'package:moonx/locator.dart';
import 'package:moonx/product/core/enum/month.dart';
import 'package:moonx/product/core/enum/project_padding.dart';
import 'package:moonx/product/core/extension/build_context_extension.dart';
import 'package:moonx/product/core/extension/scaffold_messenger_extension.dart';
import 'package:moonx/product/utils/cache/users_bloc.dart';
import 'package:moonx/product/utils/cache/users_event.dart';
import 'package:moonx/product/utils/cache/users_state.dart';
import 'package:moonx/product/utils/router/app_router.gr.dart';
import 'package:moonx/product/widget/button/cancel_button.dart';
import 'package:moonx/product/widget/button/done_button.dart';
import 'package:moonx/product/widget/button/project_button.dart';
import 'package:moonx/product/widget/container/empty_sized_box.dart';

part 'mixin/birth_date_body_mixin.dart';
part 'mixin/onboarding_builder_mixin.dart';
part 'mixin/project_button_mixin.dart';
part 'mixin/select_birth_place_button_mixin.dart';
part 'widget/birth_date_view/birth_date_view.dart';
part 'widget/birth_date_view/widget/birth_date_description.dart';
part 'widget/birth_date_view/widget/birth_date_view_background_image.dart';
part 'widget/birth_date_view/widget/birth_time_text.dart';
part 'widget/birth_date_view/widget/date_selector.dart';
part 'widget/birth_date_view/widget/enter_birth_date_text.dart';
part 'widget/birth_date_view/widget/select_birth_date_button.dart';
part 'widget/birth_date_view/widget/select_birth_time_button.dart';
part 'widget/birth_place_view/birth_place_view.dart';
part 'widget/birth_place_view/widget/birth_place_background_image.dart';
part 'widget/birth_place_view/widget/custom_city_picker.dart';
part 'widget/birth_place_view/widget/select_birth_place_button.dart';
part 'widget/custom_tab_page_selector.dart';
part 'widget/onboarding_button.dart';
part 'widget/welcome_view/welcome_view.dart';

/// Onboarding View
@RoutePage()
final class OnboardingView extends StatelessWidget {
  /// Constructor
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<OnboardingCubit>(
      create: (context) => OnboardingCubit(),
      child: const Scaffold(
        backgroundColor: Colors.black,
        body: _OnboardingBuilder(),
      ),
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
    return BlocBuilder<OnboardingCubit, OnboardingState>(
      builder: (context, state) {
        if (state.isLoaded) {
          return Column(
            children: [
              Expanded(
                child: TabBarView(
                  controller: state.tabController,
                  physics: const NeverScrollableScrollPhysics(),
                  children: List.generate(
                    OnBoardingEnum.values.length,
                    (index) => onboardingItemBuilder(context, index),
                  ),
                ),
              ),
              _CustomTabPageSelector(
                controller: state.tabController!,
              ),
              const _OnboardingButton(),
            ],
          );
        }
        if (state.error.isNotEmpty) {
          return _ErrorText(
            error: state.error,
          );
        }
        return const EmptySizedBox();
      },
    );
  }
}

final class _ErrorText extends StatelessWidget {
  const _ErrorText({
    required this.error,
  });

  final String error;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        error,
        style: context.theme.textTheme.bodyLarge,
      ),
    );
  }
}
