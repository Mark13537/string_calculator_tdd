class StringCalculatorTDD {
  int add(String numbers) {
    if (numbers.isEmpty) {
      return 0;
    }
    var numArray = numbers.split(',');
    int sum = 0;
    for (var num in numArray) {
      sum += int.parse(num);
    }
    return sum;
  }
}
