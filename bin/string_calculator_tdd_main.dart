import 'package:string_calculator_tdd/string_calculator_tdd.dart';

void main(List<String> arguments) {
  const String inputTxt = '''5,5
  5''';
  print('For input $inputTxt answer is ${StringCalculatorTDD().add(inputTxt)}');
}
