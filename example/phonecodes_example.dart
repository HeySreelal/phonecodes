import 'package:phonecodes/phonecodes.dart';

void main() {
  Country india = Countries.findByCode('IN');
  print(india.name); // India

  List<Country> countries = Countries.findByDialCode('+1');
  for (Country country in countries) {
    print('${country.name} ${country.flag}');
    // Canada 🇨🇦
    // United States 🇺🇸
  }

  Country unitedKingdom = Countries.findByName('United Kingdom');
  print(unitedKingdom.code); // GB

  try {
    Countries.findByCode('XX');
  } on CountryNotFoundException catch (e) {
    print(e); // CountryNotFoundException: Country with code XX not found
  }
}
