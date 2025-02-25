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

  test('Multi numbers returns their sum', () {
    expect(calculator.add('1,2'), 3);
  });
}
