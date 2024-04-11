import 'package:gen/gen.dart';

sealed class UsersEvent {}

final class UpdateUsersEvent extends UsersEvent {
  UpdateUsersEvent(this.users);
  final Users users;
}
