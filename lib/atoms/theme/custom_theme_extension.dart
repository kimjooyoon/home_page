import 'package:flutter/material.dart';

class CustomThemeExtension extends ThemeExtension<CustomThemeExtension> {
  final double smallSpacing;
  final double mediumSpacing;
  final double largeSpacing;

  const CustomThemeExtension({
    required this.smallSpacing,
    required this.mediumSpacing,
    required this.largeSpacing,
  });

  @override
  CustomThemeExtension copyWith({
    double? smallSpacing,
    double? mediumSpacing,
    double? largeSpacing,
  }) {
    return CustomThemeExtension(
      smallSpacing: smallSpacing ?? this.smallSpacing,
      mediumSpacing: mediumSpacing ?? this.mediumSpacing,
      largeSpacing: largeSpacing ?? this.largeSpacing,
    );
  }

  @override
  CustomThemeExtension lerp(ThemeExtension<CustomThemeExtension>? other, double t) {
    if (other is! CustomThemeExtension) {
      return this;
    }
    return CustomThemeExtension(
      smallSpacing: lerpDouble(smallSpacing, other.smallSpacing, t),
      mediumSpacing: lerpDouble(mediumSpacing, other.mediumSpacing, t),
      largeSpacing: lerpDouble(largeSpacing, other.largeSpacing, t),
    );
  }
}

double lerpDouble(num? a, num? b, double t) {
  if (a == null && b == null) return 0.0;
  if (a == null) return b! * t;
  if (b == null) return a * (1.0 - t);
  return a + (b - a) * t;
}
