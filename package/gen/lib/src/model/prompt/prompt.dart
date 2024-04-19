import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';

/// Represents a prompt.
@immutable
final class Prompt with EquatableMixin {
  /// Constructs a [Prompt] object with the given [prompt].
  const Prompt(this.prompt);

  /// The prompt.
  final String prompt;

  @override
  List<Object?> get props => [prompt];
}
