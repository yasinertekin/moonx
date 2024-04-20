part of '../inn_app_view.dart';

final class _PurchaseButton extends StatelessWidget {
  const _PurchaseButton();

  @override
  Widget build(BuildContext context) {
    final usersBloc = BlocProvider.of<UsersBloc>(context);

    return BlocSelector<InAppCubit, InAppState, String>(
      selector: (state) => state.currentPrice.price,
      builder: (context, state) {
        return BlocBuilder<UsersBloc, UsersState>(
          builder: (context, usersState) {
            return ProjectButton(
              width: context.dynamicWidth(0.6),
              onPressed: () async {
                usersBloc.add(
                  UpdateUsersEvent(
                    usersState.users.copyWith(
                      isPremium: true,
                    ),
                  ),
                );
                context.showSnackBar(
                  const SnackBar(
                    content:
                        Text('You have successfully purchased the product.'),
                  ),
                );
                await Locator.appRouter.maybePop();
              },
              title: 'Purchase for $state',
              titleColor: ColorName.colorBrilliance,
            );
          },
        );
      },
    );
  }
}
