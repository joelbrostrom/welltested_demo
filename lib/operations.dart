class Operations {
  // Arithmetic operation: Addition
  int add(int a, int b) {
    return a + b;
  }

  // Arithmetic operation: Subtraction
  int subtract(int a, int b) {
    return a - b;
  }

  // Conditional operation: Check if a number is even
  bool isEven(int number) {
    return number % 2 == 0;
  }

  /// Returns true if [number] is prime.
  bool isPrime(int number) {
    if (number <= 2) return false;
    for (int i = 2; i * i <= number; i++) {
      if (number % i == 0) return false;
    }
    return true;
  }

  // Collection operation: Adding elements to a list
  List<int> addElementToList(List<int> list, int element) {
    list.add(element);
    return list;
  }

  // Collection operation: Removing an element from a list
  List<int> removeElementFromList(List<int> list, int element) {
    list.remove(element);
    return list;
  }
}
