import 'getIsPrimeText.welltested_test.mocks.dart';import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:welltested_demo/main.dart';
import 'package:welltested_demo/operations.dart';

@GenerateMocks([Operations])
void main() {
  group('MyHomePageState', () {
    test('getIsPrimeText should return "and a prime number!" for prime numbers', () {
      final operations = MockOperations();
      final myHomePageState = MyHomePageState();

      when(operations.isPrime(any)).thenReturn(true);
      myHomePageState.counter = 3; // 3 is a prime number

      expect(myHomePageState.getIsPrimeText(), 'and a prime number!');
    });

    test('getIsPrimeText should return "but not prime number." for non-prime numbers', () {
      final operations = MockOperations();
      final myHomePageState = MyHomePageState();

      when(operations.isPrime(any)).thenReturn(false);
      myHomePageState.counter = 4; // 4 is not a prime number

      expect(myHomePageState.getIsPrimeText(), 'but not prime number.');
    });
  });
}