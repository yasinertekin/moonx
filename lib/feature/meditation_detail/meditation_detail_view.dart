import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gen/gen.dart';
import 'package:glass/glass.dart';
import 'package:moonx/feature/meditation/cubit/sound_cubit.dart';
import 'package:moonx/locator.dart';
import 'package:moonx/product/core/enum/project_radius.dart';
import 'package:moonx/product/core/extension/build_context_extension.dart';
import 'package:moonx/product/utils/mixin/format_timer.dart';
import 'package:moonx/product/widget/container/empty_sized_box.dart';

part 'widget/back_to_meditation.dart';
part 'widget/meditation_detail_background_image.dart';
part 'widget/meditation_player.dart';
part 'widget/meditation_slayder.dart';
part 'widget/sound_info.dart';
part 'widget/sound_operation.dart';
part 'widget/sound_title.dart';

@RoutePage()

/// The view for the meditation detail screen.
final class MeditationDetailView extends StatelessWidget {
  /// Constructs a [MeditationDetailView] object.
  const MeditationDetailView({
    required this.sound,
    super.key,
  });

  /// The sound to be played.
  final Sound sound;

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<SoundCubit>(context);

    return Stack(
      children: [
        _MeditationDetailBackgroundImage(sound: sound),
        const _BackToMeditation(),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            _SoundTitle(sound: sound),
            _MeditationPlayer(sound: sound, bloc: bloc),
            EmptySizedBox(
              height: context.dynamicHeight(0.1),
            ),
          ],
        ),
      ],
    );
  }
}
