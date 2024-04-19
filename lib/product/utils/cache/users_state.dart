// State
import 'package:equatable/equatable.dart';
import 'package:gen/gen.dart';

/// Represents the state of users in the application.
final class UsersState extends Equatable {
  /// Constructs a new [UsersState] instance.
  ///
  /// The [users] parameter is optional. If not provided,
  ///  a default [Users] object
  /// will be created with empty values for name, email, birthDate, birthTime,
  /// placeOfBirth, and aries as the default horoscope.
  UsersState({
    Users? users,
  }) : users = users ??
            Users(
              name: '',
              email: '',
              birthDate: '',
              birthTime: '',
              placeOfBirth: '',
              horoscope: Horoscope.aries,
            );

  /// The users object containing user information.
  final Users users;

  /// Creates a copy of this [UsersState] instance with the provided [users].
  UsersState copyWith({Users? users}) {
    return UsersState(
      users: users ?? this.users,
    );
  }

  @override
  List<Object?> get props => [users];
}
