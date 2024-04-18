import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gen/gen.dart';
import 'package:glass/glass.dart';
import 'package:moonx/feature/meditation/cubit/sound_cubit.dart';
import 'package:moonx/locator.dart';
import 'package:moonx/product/core/enum/project_padding.dart';
import 'package:moonx/product/core/enum/project_radius.dart';
import 'package:moonx/product/core/extension/build_context_extension.dart';
import 'package:moonx/product/utils/router/app_router.gr.dart';

part 'play_button.dart';
part 'sound_category_list.dart';
part 'sound_item.dart';
part 'sound_item_list.dart';
part 'sound_list_category_title.dart';

@RoutePage()
final class MedidationsCustomView extends StatefulWidget {
  const MedidationsCustomView({
    required this.soundLists,
    super.key,
  });

  final SoundCategory soundLists;

  @override
  State<MedidationsCustomView> createState() => _MedidationsViewState();
}

final class _MedidationsViewState extends State<MedidationsCustomView> {
  @override
  Widget build(BuildContext context) {
    return _SoundCategoryList(
      widget: widget,
    );
  }
}
