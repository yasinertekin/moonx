import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gen/gen.dart';
import 'package:moonx/feature/meditation/cubit/medidation_cubit.dart';
import 'package:moonx/product/core/enum/project_radius.dart';
import 'package:moonx/product/core/extension/build_context_extension.dart';
import 'package:moonx/product/widget/container/empty_sized_box.dart';

@RoutePage()
final class MeditationView extends StatefulWidget {
  const MeditationView({super.key});

  @override
  State<MeditationView> createState() => _MeditationViewState();
}

final class _MeditationViewState extends State<MeditationView>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<MedidationCubit>(
      create: (context) => MedidationCubit(
        MedidationState(
          index: MedidationTabs.meditation,
          pageController: TabController(length: 3, vsync: this),
        ),
      ),
      child: Scaffold(
        body: Stack(
          children: [
            Positioned.fill(
              child: Assets.images.imgMedidationBackground.image(
                package: 'gen',
                fit: BoxFit.cover,
              ),
            ),
            Column(
              children: [
                EmptySizedBox(
                  height: context.dynamicHeight(0.1),
                ),
                BlocBuilder<MedidationCubit, MedidationState>(
                  builder: (context, state) {
                    return Padding(
                      padding: const EdgeInsets.all(8),
                      child: Material(
                        shape: RoundedRectangleBorder(
                          borderRadius: ProjectRadius.small.borderRadius,
                        ),
                        color: ColorName.colorAtlanticCharter,
                        child: SizedBox(
                          height: context.dynamicHeight(0.05),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: List.generate(
                              MedidationTabs.values.length * 2 - 1,
                              (index) {
                                if (index.isOdd) {
                                  return const Padding(
                                    padding: EdgeInsets.symmetric(
                                      vertical: 16,
                                    ),
                                    child: VerticalDivider(),
                                  );
                                }
                                final tabIndex = index ~/ 2;
                                final tab = MedidationTabs.values[tabIndex];
                                return Expanded(
                                  child: Material(
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          ProjectRadius.small.borderRadius,
                                    ),
                                    color: state.index == tab
                                        ? const Color(0xFF545fd8)
                                        : ColorName.colorAtlanticCharter,
                                    child: InkWell(
                                      onTap: () {
                                        context
                                            .read<MedidationCubit>()
                                            .onTabChanged(tabIndex);
                                      },
                                      child: Center(
                                        child: Text(tab.title),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
                BlocBuilder<MedidationCubit, MedidationState>(
                  builder: (context, state) {
                    return Expanded(
                      child: TabBarView(
                        physics: const NeverScrollableScrollPhysics(),
                        controller: state.pageController,
                        children: const [
                          Text('data'),
                          Placeholder(),
                          Placeholder(),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
