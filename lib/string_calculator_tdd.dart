class StringCalculatorTDD {
  int _calledCount = 0;

  int add(String numbers) {
    _calledCount++;
    if (numbers.isEmpty) {
      return 0;
    }
    numbers = customDelimiter(numbers);
    var numArray = numbers.split(RegExp(r'[,\n]'));
    int sum = 0;
    final negativeNumbers = StringBuffer();
    sum = calculateNumbers(numArray, negativeNumbers, sum);
    if (negativeNumbers.isNotEmpty) {
      throw ArgumentError(
          'negatives numbers not allowed ${negativeNumbers.toString().trim()}');
    }
    return sum;
  }

  int calculateNumbers(
      List<String> numArray, StringBuffer negativeNumbers, int sum) {
    for (var num in numArray) {
      int numInt = int.parse(num);
      if (numInt < 0) {
        negativeNumbers.write('$num, ');
      }
      if (numInt <= 1000) {
        sum += numInt;
      }
    }
    return sum;
  }

  String customDelimiter(String numbers) {
    if (numbers.startsWith('//')) {
      // extract dilimiter and replace it with ","
      final delimiter = numbers.substring(2, numbers.indexOf('\n'));
      numbers = numbers.substring(numbers.indexOf('\n') + 1);
      numbers = numbers.replaceAll(delimiter, ',');
    }
    return numbers;
  }

  int getCalledCount() {
    return _calledCount;
  }
}
