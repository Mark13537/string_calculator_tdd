import 'package:test/test.dart';
import 'package:string_calculator_tdd/string_calculator_tdd.dart';

void main() {
  late final StringCalculatorTDD calculator;

  setUpAll(() {
    calculator = StringCalculatorTDD();
  });

  test('Empty string returns 0', () {
    expect(calculator.add(''), 0);
  });

  test('Single int parsing', () {
    expect(calculator.add('5'), 5);
  });

  test('Multi numbers', () {
    expect(calculator.add('1,2'), 3);
  });

  test('New line between numbers', () {
    expect(calculator.add('1\n2,3'), 6);
  });

  test('Custom delimiter', () {
    expect(calculator.add('//;\n1;2'), 3);
    expect(calculator.add('''//?\n1,1
  1?1'''), 4);
  });
}
