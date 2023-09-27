import 'package:flutter_test/flutter_test.dart';
import 'package:welltested_demo/operations.dart';

void main() {
  group('Operations', () {
    test('add should return the correct sum of two positive integers', () {
      final operations = Operations();

      expect(operations.add(3, 5), 8);
    });

    test('add should return the correct sum of two negative integers', () {
      final operations = Operations();

      expect(operations.add(-3, -5), -8);
    });

    test(
        'add should return the correct sum of one positive and one negative integer',
        () {
      final operations = Operations();

      expect(operations.add(3, -5), -2);
    });

    test('add should return the correct sum of two zero integers', () {
      final operations = Operations();

      expect(operations.add(0, 0), 0);
    });

    test(
        'add should return the correct sum of one zero and one positive integer',
        () {
      final operations = Operations();

      expect(operations.add(0, 5), 5);
    });

    test(
        'add should return the correct sum of one zero and one negative integer',
        () {
      final operations = Operations();

      expect(operations.add(0, -5), -5);
    });

    test('add should return the correct sum of the maximum integer values', () {
      final operations = Operations();

      expect(operations.add(2147483647, 2147483647), 4294967294);
    });

    test('add should return the correct sum of the minimum integer values', () {
      final operations = Operations();

      expect(operations.add(-2147483648, -2147483648), -4294967296);
    });
  });
}
