part of phonecodes;

/// This exception is thrown when a country is not found
class CountryNotFoundException implements Exception {
  /// The code of the country that was not found
  final String code;

  /// Creates a new CountryNotFoundException instance
  const CountryNotFoundException(this.code);

  @override
  String toString() {
    return 'CountryNotFoundException: Country with code $code not found';
  }
}

/// Exception representing a currency not found
class CurrencyException implements Exception {
  /// The reason why the currency was not found
  final String reason;

  /// Creates a new CurrencyNotFoundException instance
  const CurrencyException(this.reason);

  @override
  String toString() {
    return 'CurrencyException: $reason';
  }
}
