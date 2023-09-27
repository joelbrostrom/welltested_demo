class Operations {
  // Arithmetic operation: Addition
  int add(int a, int b) {
    return a + b;
  }

  // Arithmetic operation: Subtraction
  int subtract(int a, int b) {
    return a - b;
  }

  // String operation: Concatenation
  String concatenate(String a, String b) {
    return a + b;
  }

  // Collection operation: Finding an element in a list
  bool containsElement(List<int> list, int element) {
    return list.contains(element);
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

  // Conditional operation: Check if a number is even
  bool isEven(int number) {
    return number % 2 == 0;
  }

  // Conditional operation: Check if a number is odd
  bool isOdd(int number) {
    return number % 2 != 0;
  }
}
