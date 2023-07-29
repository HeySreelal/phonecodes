part of phonecodes;

/// This exception is thrown when a country is not found
class CountryNotFoundException implements Exception {
  /// The code of the country that was not found
  final String code;

  /// Creates a new CountryNotFoundException instance
  CountryNotFoundException(this.code);

  @override
  String toString() {
    return 'CountryNotFoundException: Country with code $code not found';
  }
}
