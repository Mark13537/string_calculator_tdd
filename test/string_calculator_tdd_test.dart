import 'package:test/test.dart';
import 'package:string_calculator_tdd/string_calculator_tdd.dart';

void main() {
  late final StringCalculatorTDD calculator;

  setUpAll(() {
    // common instance for all test cases
    calculator = StringCalculatorTDD();
  });

  group('basic version', () {
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

    test('Negative numbers throw exception', () {
      expect(() => calculator.add('1,-2,3'), throwsA(isA<ArgumentError>()));
    });
  });

  group('Full version', () {
    test('Get Called Count', () {
      // new instance as count is to be calculated
      final calc = StringCalculatorTDD();
      calc.add('1,2');
      expect(calc.getCalledCount(), 1);
      calc.add('3');
      expect(calc.getCalledCount(), 2);
    });
  });
}
