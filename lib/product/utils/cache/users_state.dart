// State
import 'package:equatable/equatable.dart';
import 'package:gen/gen.dart';

final class UsersState extends Equatable {
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
  final Users users;

  UsersState copyWith({Users? users}) {
    return UsersState(
      users: users ?? this.users,
    );
  }

  @override
  List<Object?> get props => [users];
}
