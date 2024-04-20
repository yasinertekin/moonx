import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gen/gen.dart';
import 'package:moonx/feature/in_app/cubit/inn_app_cubit.dart';
import 'package:moonx/locator.dart';
import 'package:moonx/product/core/enum/project_padding.dart';
import 'package:moonx/product/core/enum/project_radius.dart';
import 'package:moonx/product/core/extension/build_context_extension.dart';
import 'package:moonx/product/core/extension/scaffold_messenger_extension.dart';
import 'package:moonx/product/utils/cache/users_bloc.dart';
import 'package:moonx/product/utils/cache/users_event.dart';
import 'package:moonx/product/utils/cache/users_state.dart';
import 'package:moonx/product/widget/button/project_button.dart';
import 'package:moonx/product/widget/container/empty_sized_box.dart';

part 'mixin/options_list_tile_mixin.dart';
part 'widget/feature_description_text.dart';
part 'widget/in_app_image.dart';
part 'widget/in_app_image_list.dart';
part 'widget/in_app_options_list.dart';
part 'widget/in_app_view_app_bar.dart';
part 'widget/policy_links_row.dart';
part 'widget/purchase_button.dart';
part 'widget/why_do_i_pay_text.dart';

@RoutePage()

/// InAppView
final class InAppView extends StatelessWidget {
  /// InAppView constructor
  const InAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<InAppCubit>(
      create: (_) => InAppCubit()..initInApp(),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: const _InAppViewAppBar(),
          body: Padding(
            padding: ProjectPadding.low.paddingAll,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _WhyDoIPayText(),
                _FeatureDescriptionText(),
                _InAppImageList(),
                _InAppOptionsList(),
                _PurchaseButton(),
                EmptySizedBox(),
                _PolicyLinksRow(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
