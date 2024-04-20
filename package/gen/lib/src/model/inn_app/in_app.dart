import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

/// Represents an in-app item.
@immutable
final class InApp extends Equatable {
  /// Constructs an instance of [InApp].
  const InApp({
    required this.avatarCount,
    required this.price,
    required this.isSelect,
  });

  /// The price of the in-app item.
  final String price;

  /// Indicates whether the in-app item is selected.
  final bool isSelect;

  /// The count of avatars for the in-app item.
  final String avatarCount;

  @override
  List<Object> get props => [avatarCount, price, isSelect];

  /// Creates a copy of this [InApp] instance with the given
  /// fields replaced with the new values.
  ///
  /// If a field is not provided, the corresponding field
  ///  from the original instance will be used.
  InApp copyWith({
    String? avatarCount,
    String? price,
    bool? isSelect,
  }) {
    return InApp(
      avatarCount: avatarCount ?? this.avatarCount,
      price: price ?? this.price,
      isSelect: isSelect ?? this.isSelect,
    );
  }
}

/// A list of in-app options.
@immutable
final class InAppOptionsList {
  const InAppOptionsList._();

  /// The list of in-app options.
  static final List<InApp> inAppOptions = <InApp>[
    const InApp(
      avatarCount: '50',
      price: r'$6.99',
      isSelect: false,
    ),
    const InApp(
      avatarCount: '100',
      price: r'$9.99',
      isSelect: true,
    ),
    const InApp(
      avatarCount: '200',
      price: r'$10.99',
      isSelect: false,
    ),
  ];
}
