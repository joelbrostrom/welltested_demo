import 'incrementCounter.welltested_test.mocks.dart';
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
  });

  test('Increment counter', () {
    when(mockOperations.add(any, any)).thenReturn(1);
    when(mockOperations.isPrime(any)).thenReturn(true);
    when(mockOperations.addElementToList(any, any)).thenReturn([1]);

    myHomePageState.incrementCounter();

    expect(myHomePageState.counter, 1);
    expect(myHomePageState.discoverdPrimes, [1]);
  });

  test('Increment counter with non-prime number', () {
    when(mockOperations.add(any, any)).thenReturn(4);
    when(mockOperations.isPrime(any)).thenReturn(false);

    myHomePageState.incrementCounter();

    expect(myHomePageState.counter, 4);
    expect(myHomePageState.discoverdPrimes, []);
  });
}
