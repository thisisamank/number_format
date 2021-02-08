import 'package:flutter_test/flutter_test.dart';

import 'package:number_format/number_format.dart';

void main() {
  test('adds one to input values', () {
    final formatter = NumberFormatter();
    expect(formatter.addOne(2), 3);
    expect(formatter.addOne(-7), -6);
    expect(formatter.addOne(0), 1);
    //expect(() => formatter.addOne(null!), throwsNoSuchMethodError);
  });
}
