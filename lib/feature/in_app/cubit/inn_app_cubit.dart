import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gen/gen.dart';

part 'in_app_state.dart';

/// Manages the state of the in-app items.
final class InAppCubit extends Cubit<InAppState> {
  /// Initializes the in-app items.
  InAppCubit()
      : super(
          InAppState(
            currentPrice: InAppOptionsList.inAppOptions[1],
          ),
        );

  /// Initializes the in-app items.
  void initInApp() {
    emit(state.copyWith(inAppList: InAppOptionsList.inAppOptions));
  }

  /// Toggles the selection of the in-app item at the given index.
  void toggleSelect(int index) {
    final inAppList = state.inAppList;
    final inApp = inAppList[index];
    final newInApp = inApp.copyWith(isSelect: !inApp.isSelect);

    // Set all other in-app items to false if there is more than one true value
    if (newInApp.isSelect || inAppList.any((item) => item.isSelect)) {
      for (var i = 0; i < inAppList.length; i++) {
        if (i != index) {
          final otherInApp = inAppList[i];
          final newOtherInApp = otherInApp.copyWith(isSelect: false);
          inAppList[i] = newOtherInApp;
        }
      }
    }

    inAppList[index] = newInApp;
    emit(
      state.copyWith(
        inAppList: inAppList,
        currentPrice: newInApp,
      ),
    );
  }
}
