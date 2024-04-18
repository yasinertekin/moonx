part of 'medidations_custom_view.dart';

final class _SoundListCategoryTitle extends StatelessWidget {
  const _SoundListCategoryTitle({
    required this.soundLists,
  });

  final SoundList soundLists;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: ProjectPadding.low.paddingOnlyLeft,
      child: Text(
        soundLists.categoryTitle,
        style: context.theme.textTheme.titleLarge!.copyWith(
          color: ColorName.colorEmptiness,
          fontSize: 20,
        ),
      ),
    );
  }
}
