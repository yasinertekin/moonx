import 'package:gen/gen.dart';

/// Represents the base class for all events related to users.
sealed class UsersEvent {}

/// Represents an event to update the users.
final class UpdateUsersEvent extends UsersEvent {
  /// Creates an instance of [UpdateUsersEvent] with the specified [users].
  UpdateUsersEvent(this.users);

  /// The users to be updated.
  final Users users;
}
