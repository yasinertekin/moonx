part of '../inn_app_view.dart';

base mixin _OptionsListTileMixin on State<_OptionsListTile> {
  Color _tileColor() {
    return widget.inApp.isSelect
        ? const Color(0xFF181d38)
        : const Color(0xFF121212);
  }

  Color _borderColor() {
    return widget.inApp.isSelect ? const Color(0xFF4954bd) : Colors.transparent;
  }

  Image _checkboxImage() {
    return widget.inApp.isSelect
        ? Assets.images.btnCheckboxSelected.image(
            package: 'gen',
          )
        : Assets.images.btnCheckboxUnselected.image(
            package: 'gen',
          );
  }
}
