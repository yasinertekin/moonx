// HydratedBloc
import 'package:gen/gen.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:moonx/product/utils/cache/users_event.dart';
import 'package:moonx/product/utils/cache/users_state.dart';

/// A BLoC (Business Logic Component) responsible
///  for managing the state of users.
final class UsersBloc extends HydratedBloc<UsersEvent, UsersState> {
  /// Constructor for the [UsersBloc].
  UsersBloc() : super(UsersState()) {
    on<UpdateUsersEvent>(_mapUpdateUsersEventToState);
  }

  /// Maps the [UpdateUsersEvent] to a
  /// new [UsersState] and emits the updated state.
  Future<void> _mapUpdateUsersEventToState(
    UpdateUsersEvent event,
    Emitter<UsersState> emit,
  ) async {
    emit(state.copyWith(users: event.users));
  }

  @override
  UsersState? fromJson(Map<String, dynamic> json) {
    final users = Users.fromJson(json);
    return state.copyWith(users: users);
  }

  @override
  Map<String, dynamic>? toJson(UsersState state) {
    final users = state.users;
    return users.toJson();
  }
}
