import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gen/gen.dart';
import 'package:moonx/product/core/service/gemini_service.dart';

part 'lunar_tips_state.dart';

final class LunarTipsCubit extends Cubit<LunarTipsState> {
  /// Constructor for [LunarTipsCubit]
  LunarTipsCubit(this._geminiService)
      : super(
          LunarTipsState(
            pageController: PageController(),
            lunarTips: LunarTips.lunarTipsList,
            error: '',
          ),
        ) {
    fetchLunarTips(0);
  }

  /// The service to get the lunar tips
  final IGeminiService _geminiService;

  /// Fetches the lunar tips
  Future<void> fetchLunarTips(int index) async {
    emit(state.copyWith(lunarTipsStatus: LunarTipsStatus.loading));
    try {
      final response =
          await _geminiService.getLunarTips(state.lunarTips[index]);
      emit(
        state.copyWith(
          lunarTipsStatus: LunarTipsStatus.success,
          lunarTips: state.lunarTips.map((e) {
            if (e.title == state.lunarTips[index].title) {
              return e.copyWith(
                description: response.text,
              );
            }
            return e;
          }).toList(),
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          lunarTipsStatus: LunarTipsStatus.failure,
          error: e.toString(),
        ),
      );
    }
  }

  /// Changes the page of the lunar tips
  void changePage(int index) {
    state.pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
    if (state.lunarTips[index].description == null) {
      fetchLunarTips(index);
    }
  }
}
