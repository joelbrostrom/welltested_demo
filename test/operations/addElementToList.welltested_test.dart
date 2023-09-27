import 'package:flutter_test/flutter_test.dart';
import 'package:welltested_demo/operations.dart';

void main() {
  group('Operations', () {
    test('addElementToList should add an element to an empty list', () {
      final operations = Operations();
      final list = <int>[];

      expect(operations.addElementToList(list, 5), [5]);
    });

    test('addElementToList should add an element to a non-empty list', () {
      final operations = Operations();
      final list = <int>[1, 2, 3];

      expect(operations.addElementToList(list, 5), [1, 2, 3, 5]);
    });

    test('addElementToList should add a negative element to a list', () {
      final operations = Operations();
      final list = <int>[1, 2, 3];

      expect(operations.addElementToList(list, -5), [1, 2, 3, -5]);
    });

    test('addElementToList should add zero to a list', () {
      final operations = Operations();
      final list = <int>[1, 2, 3];

      expect(operations.addElementToList(list, 0), [1, 2, 3, 0]);
    });

    test(
        'addElementToList should add an element to a list with negative numbers',
        () {
      final operations = Operations();
      final list = <int>[-1, -2, -3];

      expect(operations.addElementToList(list, 5), [-1, -2, -3, 5]);
    });

    test('addElementToList should add an element to a list with zero', () {
      final operations = Operations();
      final list = <int>[0, 0, 0];

      expect(operations.addElementToList(list, 5), [0, 0, 0, 5]);
    });
  });
}
