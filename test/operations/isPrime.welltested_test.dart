import 'package:flutter_test/flutter_test.dart';
import 'package:welltested_demo/operations.dart';

void main() {
  group('Operations', () {
    test('isPrime should return false for number less than or equal to 2', () {
      final operations = Operations();

      expect(operations.isPrime(2), false);
      expect(operations.isPrime(1), false);
      expect(operations.isPrime(0), false);
      expect(operations.isPrime(-1), false);
    });

    test('isPrime should return true for the first 5 known primes', () {
      final operations = Operations();

      expect(operations.isPrime(2), true);
      expect(operations.isPrime(3), true);
      expect(operations.isPrime(5), true);
      expect(operations.isPrime(7), true);
      expect(operations.isPrime(11), true);
    });

    test('isPrime should return false for non-prime numbers', () {
      final operations = Operations();

      expect(operations.isPrime(4), false);
      expect(operations.isPrime(6), false);
      expect(operations.isPrime(8), false);
      expect(operations.isPrime(9), false);
      expect(operations.isPrime(10), false);
    });

    test('isPrime should return true for large prime numbers', () {
      final operations = Operations();

      expect(operations.isPrime(2147483647), true); // 2147483647 is a prime number
    });

    test('isPrime should return false for large non-prime numbers', () {
      final operations = Operations();

      expect(operations.isPrime(2147483646), false); // 2147483646 is not a prime number
    });
  });
}