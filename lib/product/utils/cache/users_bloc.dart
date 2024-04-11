// HydratedBloc
import 'package:gen/gen.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:moonx/product/utils/cache/users_event.dart';
import 'package:moonx/product/utils/cache/users_state.dart';

final class UsersBloc extends HydratedBloc<UsersEvent, UsersState> {
  UsersBloc() : super(UsersState()) {
    on<UpdateUsersEvent>(_mapUpdateUsersEventToState);
  }

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
