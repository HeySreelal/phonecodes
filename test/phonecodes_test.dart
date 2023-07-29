import 'package:phonecodes/phonecodes.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    test('Find By Name', () {
      Country unitedKingdom = Countries.findByName('United Kingdom');
      expect(unitedKingdom.code, 'GB');

      Country unitedStates = Countries.findByName('United States');
      expect(unitedStates.code, 'US');
    });

    test('Find By Code', () {
      Country unitedKingdom = Countries.findByCode('GB');
      expect(unitedKingdom.name, 'United Kingdom');

      Country unitedStates = Countries.findByCode('US');
      expect(unitedStates.name, 'United States');
    });

    test('Find By Dial Code', () {
      List<Country> countries = Countries.findByDialCode('+1');
      expect(
        countries.length,
        2,
        reason: 'There should be 2 countries with dial code +1',
      );
      expect(countries[0].name, 'Canada');
      expect(countries[1].name, 'United States');
    });

    test('Unknown Country', () {
      expect(
        () => Countries.findByCode('XX'),
        throwsA(isA<CountryNotFoundException>()),
      );
    });
  });
}
