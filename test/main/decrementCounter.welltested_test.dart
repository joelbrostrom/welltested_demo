import 'decrementCounter.welltested_test.mocks.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:welltested_demo/main.dart';
import 'package:welltested_demo/operations.dart';

@GenerateMocks([Operations])
void main() {
  late MyHomePageState myHomePageState;
  late MockOperations mockOperations;

  setUp(() {
    myHomePageState = MyHomePageState();
    mockOperations = MockOperations();
    myHomePageState.counter = 5;
    myHomePageState.discoverdPrimes = [2, 3, 5, 7, 11];
  });

  test('Decrement counter when counter is a prime number', () {
    when(mockOperations.isPrime(any)).thenReturn(true);
    when(mockOperations.subtract(any, any)).thenReturn(4);
    when(mockOperations.removeElementFromList(any, any))
        .thenReturn([2, 3, 7, 11]);

    myHomePageState.decrementCounter();

    expect(myHomePageState.counter, 4);
    expect(myHomePageState.discoverdPrimes, [2, 3, 7, 11]);
  });

  test('Decrement counter when counter is not a prime number', () {
    when(mockOperations.isPrime(any)).thenReturn(false);
    when(mockOperations.subtract(any, any)).thenReturn(4);

    myHomePageState.decrementCounter();

    expect(myHomePageState.counter, 4);
    expect(myHomePageState.discoverdPrimes, [2, 3, 5, 7, 11]);
  });
}
