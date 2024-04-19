import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';

/// Represents a response to a prompt.
@immutable
class PromptResponse with EquatableMixin {
  /// Constructs a [PromptResponse] object with the given [text].
  const PromptResponse(this.text);

  /// Creates a new instance of [PromptResponse] with the given [text].

  final String? text;

  @override
  List<Object?> get props => [text];
}
