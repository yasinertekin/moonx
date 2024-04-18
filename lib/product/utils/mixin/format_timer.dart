base mixin FormatTimerMixin {
  String formatTimer(Duration timer) {
    return '${(timer.inSeconds ~/ 60).toString().padLeft(2, '0')}:${(timer.inSeconds % 60).toString().padLeft(2, '0')}';
  }
}
