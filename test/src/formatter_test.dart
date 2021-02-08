import 'package:flutter_test/flutter_test.dart';
import 'package:number_format/src/formatter.dart';
import 'package:number_format/src/number_systems.dart';

void main() {
  test('test ', () {
    expect(NumberFormatter.getValue(number: 12333, uptoPlaces: 1), '12.3K');
    expect(NumberFormatter.getValue(number: 12333, uptoPlaces: 1, system: NumberSystem.INDIAN),'12.3Th');
  });
}
