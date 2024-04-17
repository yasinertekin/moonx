import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gen/gen.dart';
import 'package:moonx/feature/meditation/cubit/sound_cubit.dart';
import 'package:moonx/product/utils/router/app_router.gr.dart';

@RoutePage()
final class MedidationDetailView extends StatefulWidget {
  const MedidationDetailView({
    required this.sound,
    required this.soundLists,
    super.key,
  });

  final Sound sound;
  final SoundCategory soundLists;

  @override
  State<MedidationDetailView> createState() => _MedidationDetailViewState();
}

final class _MedidationDetailViewState extends State<MedidationDetailView> {
  @override
  void dispose() {
    context.read<SoundCubit>().close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Medidation Detail'),
        leading: BlocBuilder<SoundCubit, SoundState>(
          builder: (context, state) {
            return IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                context.router.push(const MeditationRoute());
              },
            );
          },
        ),
      ),
      body: Column(
        children: [
          Text(widget.sound.duration.toString()),
          Text(widget.sound.title),
        ],
      ),
    );
  }
}
