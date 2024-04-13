import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';

@immutable
final class Prompt with EquatableMixin {
  final String prompt;

  const Prompt(this.prompt);

  @override
  List<Object?> get props => [prompt];
}
