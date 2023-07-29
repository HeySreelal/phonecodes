part of phonecodes;

/// This class represents a Country with its name, code, dialCode and flag.
final class Country {
  /// The name of the country
  final String name;

  /// The code of the country
  ///
  /// This will be something like `US` for the United States, `GB` for the United Kingdom, `FR` for France, etc.
  final String code;

  /// The dial code of the country
  final String dialCode;

  /// The flag of the country
  ///
  /// This will be the emoji like `🇺🇸` for the United States, `🇬🇧` for the United Kingdom, `🇫🇷` for France, etc.
  final String flag;

  /// Creates a new Country instance
  const Country({
    required this.name,
    required this.code,
    required this.dialCode,
    required this.flag,
  });

  /// The equality operator
  @override
  bool operator ==(Object? other) =>
      identical(this, other) ||
      other is Country &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          code == other.code &&
          dialCode == other.dialCode &&
          flag == other.flag;

  /// The hash code
  @override
  int get hashCode =>
      name.hashCode ^ code.hashCode ^ dialCode.hashCode ^ flag.hashCode;

  @override
  String toString() {
    return 'Country{name: $name, code: $code, dialCode: $dialCode, flag: $flag}';
  }

  /// Returns a string that can be used to search for this country
  String toSearchString() {
    return '$name $code $dialCode $flag';
  }
}
