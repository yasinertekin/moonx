import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moonx/feature/onboarding/view/onboarding_view.dart';

part 'onboarding_state.dart';

/// Onboarding OnboardingCubit
final class OnboardingCubit extends Cubit<OnboardingState> {
  /// Constructor
  OnboardingCubit() : super(const OnboardingState());

  /// Tab Controller
  late final TabController _tabController;

  /// Initialize TabController
  Future<void> initializeTabController(int length, TickerProvider vsync) async {
    try {
      _tabController = TabController(length: length, vsync: vsync);
      emit(
        state.copyWith(
          tabController: _tabController,
          isLoaded: true,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          error: e.toString(),
        ),
      );
    }
  }

  /// Dispose
  void dispose() {
    _tabController.dispose();
  }

  /// Next Page
  Future<void> nextPage() async {
    if (state.tabController!.index < OnBoardingEnum.values.length - 1) {
      state.tabController!.animateTo(
        state.tabController!.index + 1,
        duration: const Duration(
          milliseconds: 500,
        ),
        curve: Curves.easeInOut,
      );

      emit(
        state.copyWith(
          tabController: state.tabController,
          onBoardingEnum: OnBoardingEnum.values[state.tabController!.index],
        ),
      );
    }
  }
}
