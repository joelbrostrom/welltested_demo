import 'package:flutter_test/flutter_test.dart';
import 'package:welltested_demo/operations.dart';

void main() {
  group('Operations', () {
    test(
        'removeElementFromList should return list without the specified element',
        () {
      final operations = Operations();
      final list = [1, 2, 3, 4, 5];
      final element = 3;

      expect(operations.removeElementFromList(list, element), [1, 2, 4, 5]);
    });

    test(
        'removeElementFromList should return the same list if element is not found',
        () {
      final operations = Operations();
      final list = [1, 2, 3, 4, 5];
      final element = 6;

      expect(operations.removeElementFromList(list, element), [1, 2, 3, 4, 5]);
    });

    test(
        'removeElementFromList should return an empty list if all elements are the same and removed',
        () {
      final operations = Operations();
      final list = [3, 3, 3, 3, 3];
      final element = 3;

      expect(operations.removeElementFromList(list, element), [3, 3, 3, 3]);
    });

    test('removeElementFromList should handle empty list', () {
      final operations = Operations();
      final list = <int>[];
      final element = 3;

      expect(operations.removeElementFromList(list, element), []);
    });
  });
}
