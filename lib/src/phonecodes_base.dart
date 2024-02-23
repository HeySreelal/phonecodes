part of '../phonecodes.dart';

/// This class is a collection of all the countries.
///
/// It contains a list of all the countries and provides methods to find a country by its name, code or dial code.
class Countries {
  /// Returns a list of all the countries
  static List<Country> get list => _list;

  /// Returns a Country by its name code
  ///
  /// Throws an exception if the country could not be found
  static Country findByCode(String code) {
    return _list.firstWhere(
      (country) => country.code == code,
      orElse: () {
        throw CountryNotFoundException(code);
      },
    );
  }

  /// Returns a Country by its name
  ///
  /// Throws an exception if the country could not be found
  static Country findByName(String name) {
    return _list.firstWhere(
      (country) => country.name == name,
      orElse: () {
        throw CountryNotFoundException(name);
      },
    );
  }

  /// Returns a List of countries by its dial code
  ///
  /// Throws an exception if the country could not be found
  static List<Country> findByDialCode(String code) {
    return _list
        .where(
          (country) => country.dialCode == code,
        )
        .toList();
  }

  /// List of all countries
  static const List<Country> _list = Country.values;

  /// Returns a list of countries that match the given filter
  List<Country> operator [](Filter filter) {
    return _list
        .where(
          (country) =>
              country.name.toLowerCase().contains(filter.name!.toLowerCase()) ||
              country.code.toLowerCase().contains(filter.code!.toLowerCase()) ||
              country.dialCode
                  .toLowerCase()
                  .contains(filter.dialCode!.toLowerCase()),
        )
        .toList();
  }

  /// Find matching countries the given filter, returns list of countries
  List<Country>? findBy(Filter filter) {
    return this[filter];
  }
}
