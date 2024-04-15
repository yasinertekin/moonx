import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moonx/feature/home/view/home_view.dart';

part 'home_header_state.dart';

/// Cubit responsible for managing the state of the home header.
final class HomeHeaderCubit extends Cubit<HomeHeaderState> {
  /// Initializes the home header cubit.
  HomeHeaderCubit()
      : super(
          HomeHeaderState(
            index: HomeHeader.location,
            pageController: PageController(),
          ),
        );

  /// Changes the current page of the home header.
  ///
  /// The [index] parameter specifies the index of the page to navigate to.
  void changePage(int index) {
    state.pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.ease,
    );
    emit(state.copyWith(index: HomeHeader.values[index]));
  }
}
