class StringCalculatorTDD {
  int _calledCount = 0;

  int add(String numbers) {
    _calledCount++;
    if (numbers.isEmpty) {
      return 0;
    }
    if (numbers.startsWith('//')) {
      final delimiter = numbers.substring(2, numbers.indexOf('\n'));
      numbers = numbers.substring(numbers.indexOf('\n') + 1);
      numbers = numbers.replaceAll(delimiter, ',');
    }
    var numArray = numbers.split(RegExp(r'[,\n]'));
    int sum = 0;
    final negativeNumbers = StringBuffer();
    for (var num in numArray) {
      int numInt = int.parse(num);
      if (numInt < 0) {
        negativeNumbers.write('$num, ');
      }
      sum += numInt;
    }
    if (negativeNumbers.isNotEmpty) {
      throw ArgumentError(
          'negatives numbers not allowed ${negativeNumbers.toString().trim()}');
    }
    return sum;
  }

  int getCalledCount() {
    return _calledCount;
  }
}
