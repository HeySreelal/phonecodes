part of '../phonecodes.dart';

/// Filter class helps to filter the countries by name, code or dial code.
class Filter {
  /// Name of the country to filter
  final String? name;

  /// Code of the country to filter
  final String? code;

  /// Dial code of the country to filter
  final String? dialCode;

  /// Creates a new filter with given name, code and dial code.
  const Filter({
    this.name,
    this.code,
    this.dialCode,
  });
}
