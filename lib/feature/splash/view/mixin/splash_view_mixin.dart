part of '../splash_view.dart';

base mixin _SplashViewMixin on State<SplashView> {
  /// isLogin
  bool _isLogin = false;

  @override
  void initState() {
    super.initState();
    _isLoginOperation();
  }

  void _isLoginOperation() {
    Future.delayed(const Duration(seconds: 2), () {
      _isLogin = context.read<UsersBloc>().state.users.birthDate.isNotEmpty;
      if (_isLogin) {
        Locator.appRouter.replace(NavBarRoute());
      } else {
        Locator.appRouter.replace(const OnboardingRoute());
      }
    });
  }
}
