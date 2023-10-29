part of phonecodes;

/// Currency enum represents the currency of a country.
enum Currency {
  /// Afghan Afghani
  afn._("Afghan Afghani", "AFN", "؋"),

  /// Albanian Lek
  all._("Albanian Lek", "ALL", "Lek"),

  /// Algerian Dinar
  dzd._("Algerian Dinar", "DZD", "دج"),

  /// Angolan Kwanza
  aoa._("Angolan Kwanza", "AOA", "Kz"),

  /// East Caribbean Dollar
  xcd._("East Caribbean Dollar", "XCD", "EC\$"),

  /// Argentine Peso
  ars._("Argentine Peso", "ARS", "\$"),

  /// Armenian Dram
  amd._("Armenian Dram", "AMD", "֏"),

  /// Aruban Florin
  awg._("Aruban Florin", "AWG", "AWG"),

  /// Australian Dollar
  aud._("Australian Dollar", "AUD", "\$"),

  /// Azerbaijani Manat
  azn._("Azerbaijani Manat", "AZN", "₼"),

  /// Bahamian Dollar
  bsd._("Bahamian Dollar", "BSD", "B\$"),

  /// Bahraini Dinar
  bhd._("Bahraini Dinar", "BHD", "ب.د"),

  /// Bangladeshi Taka
  bdt._("Bangladeshi Taka", "BDT", "৳"),

  /// Barbadian Dollar
  bbd._("Barbadian Dollar", "BBD", "Bds\$"),

  /// Belarusian Ruble
  byn._("Belarusian Ruble", "BYN", "Br"),

  /// Belize Dollar
  bzd._("Belize Dollar", "BZD", "BZ\$"),

  /// West African CFA Franc
  xof._("West African CFA Franc", "XOF", "CFA"),

  /// Bermudian Dollar
  bmd._("Bermudian Dollar", "BMD", "BD\$"),

  /// Bhutanese Ngultrum
  btn._("Bhutanese Ngultrum", "BTN", "Nu."),

  /// Bolivian Boliviano
  bob._("Bolivian Boliviano", "BOB", "Bs."),

  /// Bosnia-Herzegovina Convertible Mark
  bam._("Bosnia-Herzegovina Convertible Mark", "BAM", "KM"),

  /// Botswanan Pula
  bwp._("Botswanan Pula", "BWP", "P"),

  /// Brazilian Real
  brl._("Brazilian Real", "BRL", "R\$"),

  /// Pound Sterling
  gbp._("Pound Sterling", "GBP", "£"),

  /// Brunei Dollar
  bnd._("Brunei Dollar", "BND", "B\$"),

  /// Bulgarian Lev
  bgn._("Bulgarian Lev", "BGN", "лв"),

  /// Burundian Franc
  bif._("Burundian Franc", "BIF", "FBu"),

  /// Cambodian Riel
  khr._("Cambodian Riel", "KHR", "៛"),

  /// Central African CFA Franc
  xaf._("Central African CFA Franc", "XAF", "FCFA"),

  /// Canadian Dollar
  cad._("Canadian Dollar", "CAD", "\$"),

  /// Cape Verdean Escudo
  cve._("Cape Verdean Escudo", "CVE", "Esc"),

  /// Cayman Islands Dollar
  kyd._("Cayman Islands Dollar", "KYD", "CI\$"),

  /// Chilean Peso
  clp._("Chilean Peso", "CLP", "\$"),

  /// Chinese Yuan
  cny._("Chinese Yuan", "CNY", "¥"),

  /// Colombian Peso
  cop._("Colombian Peso", "COP", "\$"),

  /// Comorian Franc
  kmf._("Comorian Franc", "KMF", "CF"),

  /// New Zealand Dollar
  nzd._("New Zealand Dollar", "NZD", "\$"),

  /// Costa Rican Colón
  crc._("Costa Rican Colón", "CRC", "₡"),

  /// Croatian Kuna
  hrk._("Croatian Kuna", "HRK", "kn"),

  /// Cuban Peso
  cup._("Cuban Peso", "CUP", "\$"),

  /// Czech Koruna
  czk._("Czech Koruna", "CZK", "Kč"),

  /// Antillean Guilder
  ang._("Antillean Guilder", "ANG", "ƒ"),

  /// Congolese Franc
  cdf._("Congolese Franc", "CDF", "FC"),

  /// Danish Krone
  dkk._("Danish Krone", "DKK", "kr"),

  /// Djiboutian Franc
  djf._("Djiboutian Franc", "DJF", "Fdj"),

  /// Dominican Peso
  dop._("Dominican Peso", "DOP", "RD\$"),

  /// Egyptian Pound
  egp._("Egyptian Pound", "EGP", "E£"),

  /// Eritrean Nakfa
  ern._("Eritrean Nakfa", "ERN", "ERN"),

  /// Ethiopian Birr
  etb._("Ethiopian Birr", "ETB", "Br"),

  /// Falkland Islands Pound
  fkp._("Falkland Islands Pound", "FKP", "FK£"),

  /// Indian Rupee
  inr._("Indian Rupee", "INR", "₹"),

  /// United States Dollar
  usd._("United States Dollar", "USD", "\$"),

  /// Euro
  eur._("Euro", "EUR", "€"),
  ;

  /// The name of the currency.
  ///
  /// Example: Indian Rupee, United States Dollar, etc.
  final String name;

  /// The code of the currency.
  ///
  /// Example: INR, USD, etc.
  final String code;

  /// The symbol of the currency.
  ///
  /// Example: ₹, $, etc.
  final String symbol;

  const Currency._(this.name, this.code, this.symbol);

  /// Returns the currency of the country with the given [code].
  static Currency fromCode(String code) {
    return Currency.values.firstWhere(
      (c) => c.code == code.toUpperCase(),
      orElse: () =>
          throw CurrencyException("Currency with code $code not found"),
    );
  }

  /// Returns the currency of the country with the given [name].
  static Currency fromName(String name) {
    return Currency.values.firstWhere(
      (c) => c.name == name,
      orElse: () =>
          throw CurrencyException("Currency with name $name not found"),
    );
  }

  /// Returns the currency of the country with the given [symbol].
  static Currency fromSymbol(String symbol) {
    return Currency.values.firstWhere(
      (c) => c.symbol == symbol,
      orElse: () =>
          throw CurrencyException("Currency with symbol $symbol not found"),
    );
  }
}
