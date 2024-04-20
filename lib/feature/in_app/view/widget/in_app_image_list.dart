part of '../inn_app_view.dart';

final class _InAppImageList extends StatelessWidget {
  const _InAppImageList();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.dynamicHeight(0.2),
      child: CarouselSlider.builder(
        options: _ListOptions(context),
        itemCount: InAppImage.values.length,
        itemBuilder: (context, index, realIndex) {
          final inAppImage = InAppImage.values[index];
          return inAppImage.value;
        },
      ),
    );
  }
}

final class _ListOptions extends CarouselOptions {
  _ListOptions(BuildContext context)
      : super(
          height: context.dynamicHeight(0.35),
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 3),
          enlargeCenterPage: true,
          scrollPhysics: const NeverScrollableScrollPhysics(),
          viewportFraction: 0.45,
          aspectRatio: 1,
          autoPlayCurve: Curves.easeInOutCubic,
        );
}
