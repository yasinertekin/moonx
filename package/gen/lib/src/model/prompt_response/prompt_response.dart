import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';

@immutable
final class PromptResponse with EquatableMixin {
  final String? text;

  const PromptResponse(this.text);

  @override
  List<Object?> get props => [text];
}
