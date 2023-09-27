import 'package:flutter_test/flutter_test.dart';
import 'package:welltested_demo/operations.dart';

void main() {
  group('Operations', () {
    test('subtract should return the correct difference of two positive integers', () {
      final operations = Operations();

      expect(operations.subtract(5, 3), 2);
    });

    test('subtract should return the correct difference of two negative integers', () {
      final operations = Operations();

      expect(operations.subtract(-3, -5), 2);
    });

    test(
        'subtract should return the correct difference of one positive and one negative integer',
        () {
      final operations = Operations();

      expect(operations.subtract(3, -5), 8);
    });

    test('subtract should return the correct difference of two zero integers', () {
      final operations = Operations();

      expect(operations.subtract(0, 0), 0);
    });

    test(
        'subtract should return the correct difference of one zero and one positive integer',
        () {
      final operations = Operations();

      expect(operations.subtract(0, 5), -5);
    });

    test(
        'subtract should return the correct difference of one zero and one negative integer',
        () {
      final operations = Operations();

      expect(operations.subtract(0, -5), 5);
    });

    test('subtract should return the correct difference of the maximum integer values', () {
      final operations = Operations();

      expect(operations.subtract(2147483647, 2147483647), 0);
    });

    test('subtract should return the correct difference of the minimum integer values', () {
      final operations = Operations();

      expect(operations.subtract(-2147483648, -2147483648), 0);
    });
  });
}