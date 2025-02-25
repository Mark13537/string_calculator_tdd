class StringCalculatorTDD {
  int add(String numbers) {
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
    for (var num in numArray) {
      sum += int.parse(num);
    }
    return sum;
  }
}
