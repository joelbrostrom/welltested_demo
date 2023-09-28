// Mocks generated by Mockito 5.4.2 from annotations
// in welltested_demo/test/main/incrementCounter.welltested_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:mockito/mockito.dart' as _i1;
import 'package:welltested_demo/operations.dart' as _i2;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

/// A class which mocks [Operations].
///
/// See the documentation for Mockito's code generation for more information.
class MockOperations extends _i1.Mock implements _i2.Operations {
  MockOperations() {
    _i1.throwOnMissingStub(this);
  }

  @override
  int add(
    int? a,
    int? b,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #add,
          [
            a,
            b,
          ],
        ),
        returnValue: 0,
      ) as int);

  @override
  int subtract(
    int? a,
    int? b,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #subtract,
          [
            a,
            b,
          ],
        ),
        returnValue: 0,
      ) as int);

  @override
  bool isEven(int? number) => (super.noSuchMethod(
        Invocation.method(
          #isEven,
          [number],
        ),
        returnValue: false,
      ) as bool);

  @override
  bool isPrime(int? number) => (super.noSuchMethod(
        Invocation.method(
          #isPrime,
          [number],
        ),
        returnValue: false,
      ) as bool);

  @override
  List<int> addElementToList(
    List<int>? list,
    int? element,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #addElementToList,
          [
            list,
            element,
          ],
        ),
        returnValue: <int>[],
      ) as List<int>);

  @override
  List<int> removeElementFromList(
    List<int>? list,
    int? element,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #removeElementFromList,
          [
            list,
            element,
          ],
        ),
        returnValue: <int>[],
      ) as List<int>);
}
