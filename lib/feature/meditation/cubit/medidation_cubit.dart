import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moonx/feature/home/cubit/home_header/home_header_cubit.dart';

final class MedidationCubit extends Cubit<MedidationState> {
  MedidationCubit(super.initialState);

  void onTabChanged(int index) {
    state.pageController.animateTo(index);
    emit(state.copyWith(index: MedidationTabs.values[index]));
  }
}

/// Represents the state of the home header.
final class MedidationState extends Equatable {
  /// Constructs a [HomeHeaderState] with the given [index]
  /// and [pageController].
  const MedidationState({required this.index, required this.pageController});

  /// The index of the home header.
  final MedidationTabs index;

  /// The page controller for the home header.
  final TabController pageController;

  @override
  List<Object> get props => [index, pageController];

  /// Creates a copy of this [HomeHeaderState] with the given parameters.
  MedidationState copyWith({
    MedidationTabs? index,
    TabController? pageController,
  }) {
    return MedidationState(
      index: index ?? this.index,
      pageController: pageController ?? this.pageController,
    );
  }
}

enum MedidationTabs {
  meditation('Meditation'),
  sleep('Sleep'),
  music('Music');

  final String title;

  const MedidationTabs(this.title);
}
