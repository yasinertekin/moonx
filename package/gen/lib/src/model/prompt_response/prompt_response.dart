import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';

@immutable
final class PromptResponse with EquatableMixin {
  final String? promptResponse;

  const PromptResponse(this.promptResponse);

  @override
  List<Object?> get props => [promptResponse];
}
