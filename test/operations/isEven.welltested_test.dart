import 'package:flutter_test/flutter_test.dart';
import 'package:welltested_demo/operations.dart';

void main() {
  group('Operations', () {
    test('isEven should return true for even numbers', () {
      final operations = Operations();

      expect(operations.isEven(2), true);
      expect(operations.isEven(4), true);
      expect(operations.isEven(0), true);
    });

    test('isEven should return false for odd numbers', () {
      final operations = Operations();

      expect(operations.isEven(1), false);
      expect(operations.isEven(3), false);
      expect(operations.isEven(-1), false);
    });

    test('isEven should return true for negative even numbers', () {
      final operations = Operations();

      expect(operations.isEven(-2), true);
      expect(operations.isEven(-4), true);
    });

    test('isEven should return false for negative odd numbers', () {
      final operations = Operations();

      expect(operations.isEven(-1), false);
      expect(operations.isEven(-3), false);
    });

    test('isEven should return true for maximum even integer value', () {
      final operations = Operations();

      expect(operations.isEven(2147483646), true);
    });

    test('isEven should return false for maximum odd integer value', () {
      final operations = Operations();

      expect(operations.isEven(2147483647), false);
    });

    test('isEven should return true for minimum even integer value', () {
      final operations = Operations();

      expect(operations.isEven(-2147483648), true);
    });

    test('isEven should return false for minimum odd integer value', () {
      final operations = Operations();

      expect(operations.isEven(-2147483647), false);
    });
  });
}