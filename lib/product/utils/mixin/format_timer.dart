/// A mixin that provides a method to format
///  a [Duration] into a string representation of a timer.
base mixin FormatTimerMixin {
  /// Formats the given [timer] duration into
  /// a string representation of a timer.
  ///
  /// The returned string has the format '
  /// mm:ss', where 'mm' represents the minutes and 'ss' represents the seconds.
  String formatTimer(Duration timer) {
    // ignore: lines_longer_than_80_chars
    return '${(timer.inSeconds ~/ 60).toString().padLeft(2, '0')}:${(timer.inSeconds % 60).toString().padLeft(2, '0')}';
  }
}
