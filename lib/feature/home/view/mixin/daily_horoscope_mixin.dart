part of '../home_view.dart';

base mixin _DailyHoroscopeMixin on State<_DailyHoroscope> {
  @override
  void initState() {
    super.initState();
    context.read<DailyHoroscopeCubit>().generateDailyHoroscope(
          users: context.read<UsersBloc>().state.users,
        );
  }
}
