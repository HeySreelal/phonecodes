# PhoneCodes

![Version](https://img.shields.io/pub/v/phonecodes)
![License](https://img.shields.io/github/license/heysreelal/phonecodes)
![GitHub Stars](https://img.shields.io/github/stars/heysreelal/phonecodes?style=social)

## Overview

The **PhoneCodes** package is a comprehensive tool for Flutter and Dart developers, offering a convenient list of all countries along with essential details such as country dial codes, ISO codes, flags, and currencies. Whether you're building a phone authentication flow or integrating phone number input functionality, this package simplifies the process by providing easy access to crucial country information.

## Features

- **Country Enumeration**: Utilize the `Country` enum to effortlessly access country details including name, ISO code, dial code, and flag.
- **Currency Enumeration**: Access currency information such as name, code, and symbol through the `Currency` enum.
- **Flexible API**: The package offers a variety of methods within the `Countries` class, enabling developers to find countries by code, name, dial code, or through custom filters.
- **Easy Integration**: Simply import the package and start using predefined country and currency enums, eliminating the need for manual data collection.

## Installation

To use the **PhoneCodes** package in your Flutter/Dart project, add the following dependency to your `pubspec.yaml` file:

```yaml
dependencies:
  phonecodes: <latest>
```

Then, run `flutter pub get` to install the package.

## Usage

### Country Enumeration

```dart
import 'package:phonecodes/phonecodes.dart';

void main() {
  // Access country details by enum
  print(Country.india.name);            // Output: India
  print(Country.india.code);            // Output: IN
  print(Country.india.dialCode);        // Output: +91
  print(Country.india.flag);            // Output: 🇮🇳
  print(Country.india.currency.symbol)  // Output: ₹
}
```

### Currency Enumeration

```dart
import 'package:phonecodes/phonecodes.dart';

void main() {
  // Access currency details by enum
  print(Currency.inr.name);    // Output: Indian Rupee
  print(Currency.inr.code);    // Output: INR
  print(Currency.inr.symbol);  // Output: ₹
}
```

### Country Lookup

```dart
import 'package:phonecodes/phonecodes.dart';

void main() {
  // Find country by ISO code
  final Country country = Countries.findByCode('IN');
  print(country.name); // Output: India

  // Find country by name
  final Country country2 = Countries.findByName('United States');
  print(country2.dialCode); // Output: +1

  // Find country by dial code
  final Country country3 = Countries.findByDialCode('+44').first;
  print(country3.flag); // Output: 🇬🇧
}
```

## Contributing

Contributions to the **PhoneCodes** package are welcome! If you encounter any issues or have suggestions for improvements, please feel free to submit a pull request or open an issue on the GitHub repository.

## License

This package is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.

---

**PhoneCodes** - Making country and currency information easily accessible for Flutter/Dart developers. Happy coding! 🚀🌍💰