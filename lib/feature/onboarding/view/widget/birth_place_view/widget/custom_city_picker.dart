part of '../../../onboarding_view.dart';

final class _CustomCityPicker extends StatelessWidget {
  const _CustomCityPicker({
    required List<String> cityList,
  }) : _cityList = cityList;

  final List<String> _cityList;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.dynamicHeight(0.4),
      color: CupertinoColors.darkBackgroundGray,
      child: Column(
        children: [
          const _ActionsRow(),
          _CustomPicker(cityList: _cityList),
        ],
      ),
    );
  }
}

final class _CustomPicker extends StatelessWidget {
  const _CustomPicker({
    required List<String> cityList,
  }) : _cityList = cityList;

  final List<String> _cityList;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 7,
      child: _CustomCupertinoCityPicker(cityList: _cityList),
    );
  }
}

final class _CustomCupertinoCityPicker extends StatefulWidget {
  const _CustomCupertinoCityPicker({
    required List<String> cityList,
  }) : _cityList = cityList;

  final List<String> _cityList;

  @override
  State<_CustomCupertinoCityPicker> createState() =>
      _CustomCupertinoCityPickerState();
}

final class _CustomCupertinoCityPickerState
    extends State<_CustomCupertinoCityPicker> {
  @override
  Widget build(BuildContext context) {
    return BlocSelector<UsersBloc, UsersState, Users>(
      selector: (state) => state.users,
      builder: (context, state) => CupertinoPicker(
        backgroundColor: CupertinoColors.darkBackgroundGray,
        itemExtent: context.dynamicHeight(0.08),
        onSelectedItemChanged: (index) {
          if (!mounted) return;
          context.read<UsersBloc>().add(
                UpdateUsersEvent(
                  state.copyWith(
                    placeOfBirth: widget._cityList[index],
                  ),
                ),
              );
        },
        children: List.generate(
          widget._cityList.length,
          (index) => Center(
            child: Text(
              widget._cityList[index],
              style: context.theme.textTheme.bodyLarge?.copyWith(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

final class _ActionsRow extends StatelessWidget {
  const _ActionsRow();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CloseButton(
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        const DoneButton(),
      ],
    );
  }
}
