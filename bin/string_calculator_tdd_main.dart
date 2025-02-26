import 'package:string_calculator_tdd/string_calculator_tdd.dart';

void main(List<String> arguments) {
  const String inputTxt = '//[***]\n1***2***3';
  print('For input $inputTxt answer is ${StringCalculatorTDD().add(inputTxt)}');
}
